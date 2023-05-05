import 'package:arch_generator/src/ddd_boilerplate_generator.dart';

Future<void> runGenerators({required bool ddd}) async {
  if (ddd) {
    final dddGenerator = DddBoilerplateGenerator();
    await dddGenerator.generate();
  }
}