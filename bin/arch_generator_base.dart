import 'dart:io';
import 'package:args/args.dart';
import 'package:arch_generator/src/generator_runner.dart';
import 'package:ansicolor/ansicolor.dart';

void main(List<String> arguments) async {
  AnsiPen greenPen = AnsiPen()..green(bold: true);
  AnsiPen redPen = AnsiPen()..red(bold: true);

  try {
    final parser = ArgParser()
      ..addFlag('ddd', help: 'Generate DDD boilerplate')
      ..addFlag('mvc', help: 'Generate MVC boilerplate')
      ..addFlag('mvvm', help: 'Generate MVVM boilerplate')
      ..addCommand('build');

    final results = parser.parse(arguments);

    if (results.command == null) {
      throw 'Please provide a valid command, e.g., "build".';
    }

    if (results.command!.name == 'build') {
      final isDDD = results['ddd'] as bool;
      final isMVC = results['mvc'] as bool;
      final isMVVM = results['ddd'] as bool;

      if (isDDD && isMVC && isMVVM) {
        throw 'Only one architecture command accepted';
      } else if (isDDD || isMVC || isMVVM) {
        if (isDDD) {
          await runGenerators(arch: Architecture.ddd);
        } else if (isMVC) {
          await runGenerators(arch: Architecture.mvc);
        } else if (isMVVM) {
          await runGenerators(arch: Architecture.mvvm);
        }
      } else {
        throw 'Please provide atleast one architecture command. e.g, "--ddd , --mvvm or --mvc"';
      }
      print(greenPen(
          'Architecture boilerplate successfully generated! Check your lib/ directory for the new structure.'));
    } else {
      throw 'Unknown command: ${results.command!.name}';
    }
  } catch (e) {
    print(redPen(e.toString()));
    exit(1);
  }
}
