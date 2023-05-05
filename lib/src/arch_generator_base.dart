import 'dart:io';
import 'package:args/args.dart';
import 'package:arch_generator/src/generator_runner.dart';

void main(List<String> arguments) async {
  final parser = ArgParser()
    ..addFlag('ddd', abbr: 'd', help: 'Generate DDD boilerplate')
    ..addCommand('build');

  final results = parser.parse(arguments);

  if (results.command == null) {
    print('Please provide a valid command, e.g., "build".');
    exit(1);
  }

  if (results.command!.name == 'build') {
    final ddd = results['ddd'] as bool;

    await runGenerators(ddd: ddd);
  } else {
    print('Unknown command: ${results.command!.name}');
    exit(1);
  }
}