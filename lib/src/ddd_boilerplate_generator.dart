import 'dart:io';
import 'package:arch_generator/src/failure_classes_generator.dart';
import 'package:arch_generator/src/global_functions_generator.dart';
import 'package:arch_generator/src/value_object_generator.dart';

class DddBoilerplateGenerator {
  Future<void> generate() async {

    /// Core Directories
    await Directory('lib/core/locator').create(recursive: true);
    await Directory('lib/core/services').create(recursive: true);
    await Directory('lib/core/constants').create(recursive: true);
    await Directory('lib/core/utils').create(recursive: true);
    generateGlobalFunctions(path: "lib/core/utils");

    /// Data Layer
    await Directory('lib/data/models').create(recursive: true);
    await Directory('lib/data/repositories').create(recursive: true);
    await Directory('lib/data/data_sources').create(recursive: true);
    await Directory('lib/data/data_sources/remote').create(recursive: true);
    await Directory('lib/data/data_sources/local').create(recursive: true);

    /// Domain Layer
    await Directory('lib/domain/entities').create(recursive: true);
    await Directory('lib/domain/value_objects').create(recursive: true);
    await Directory('lib/domain/failures').create(recursive: true);
    await Directory('lib/domain/repositories').create(recursive: true);
    await generateValueObjects(path: 'lib/domain/value_objects');
    await generateFailureClasses(path: 'lib/domain/failures');

    /// Presentation Layer
    await Directory('lib/presentation/state_management').create(recursive: true);
    await Directory('lib/presentation/screens').create(recursive: true);
    await Directory('lib/presentation/widgets').create(recursive: true);
  }  
}