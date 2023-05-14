import 'package:arch_generator/src/ddd_boilerplate_generator.dart';
import 'package:arch_generator/src/mvc_boilerplate_generator.dart';
import 'package:arch_generator/src/mvvm_boilerplate_generator.dart';

Future<void> runGenerators({required Architecture arch}) async {
  if (arch == Architecture.ddd) {
    final dddGenerator = DddBoilerplateGenerator();
    await dddGenerator.generate();
  } else if (arch == Architecture.mvc) {
    final mvcGenerator = MvcBoilerplateGenerator();
    await mvcGenerator.generate();
  } else if (arch == Architecture.mvvm) {
    final mvvmGenerator = MvvmBoilerplateGenerator();
    await mvvmGenerator.generate();
  } else {
    throw "Something went wrong with architecture command";
  }
}

enum Architecture { ddd, mvvm, mvc }
