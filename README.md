# Arch Generator

A Dart package to generate boilerplate code for Domain-Driven Design (DDD) architecture with support for `freezed` and `provider` or `bloc` state management.

## Table of Contents

- [Installation](#installation)
- [Usage](#usage)
- [Folder Structure](#folder-structure)
- [Customization](#customization)
- [License](#license)

## Installation

1. Add `arch_generator` as a dev dependency in your `pubspec.yaml`:

```dart
dev_dependencies:
  arch_generator: 1.0.0
```

2. Run `dart pub get` to fetch the package.

## Usage

To generate the boilerplate code for your project, run the following command:

```dart dart pub run arch_generator --ddd build

This command will create a new folder structure and files for the DDD architecture, including support for `freezed` and `bloc` state management. You can replace `bloc` with `provider` if you prefer using the `provider` state management package.

## Folder Structure

The generated folder structure is as follows:

```
lib/
├── domain/
│ ├── entities/
│ ├── value_objects/
│ ├── failures/
│ └── repositories/
├── data/
│ ├── models/
│ ├── repositories/
│ └── data_sources/
└── presentation/
├── state_management/
│ ├── provider/ (or bloc/)
│ ├── states/
│ └── events/
└── ui/
└── widgets/

This folder structure organizes your code into domain, data, and presentation layers, following the DDD principles.

## Customization

You can customize the code generation process by modifying the `DddBoilerplateGenerator` class in the `arch_generator` package. You can add additional files, folders, or templates as needed to fit your specific use case.

## License

This project is licensed under the MIT License.

Remember to adjust the version number and any other information as needed. Save this README as `README.md` in the root directory of your package. This will help users understand how to use your package and provide a clear overview of its features and usage.
