import 'dart:io';
import 'package:args/args.dart';
import 'package:arch_generator/src/generator_runner.dart';
import 'package:ansicolor/ansicolor.dart';

void main(List<String> arguments) async {
  AnsiPen greenPen = AnsiPen()..green(bold: true);
  AnsiPen redPen = AnsiPen()..red(bold: true);

  try {
    final parser = ArgParser()
      ..addFlag('ddd', abbr: 'd', help: 'Generate DDD boilerplate')
      ..addCommand('build');

    final results = parser.parse(arguments);

    if (results.command == null) {
      throw 'Please provide a valid command, e.g., "build".';
    }

    if (results.command!.name == 'build') {
      final ddd = results['ddd'] as bool;
      await runGenerators(ddd: ddd);
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
