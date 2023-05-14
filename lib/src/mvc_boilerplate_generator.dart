import 'dart:io';
import 'package:arch_generator/src/global_functions_generator.dart';

class MvcBoilerplateGenerator {
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

    /// Controllers
    await Directory('lib/controllers').create(recursive: true);

    /// Views
    await Directory('lib/views').create(recursive: true);
  }
}