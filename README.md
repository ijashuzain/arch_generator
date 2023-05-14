# Arch Generator

A Dart package to generate Clean Architecture boilerplate with defferent type of design approch such as `ddd` and `mvc` or `mvvm`. 

## Table of Contents

- [Installation](#installation)
- [Usage](#usage)
  - [DDD](#1-ddd-domain-driven-design)
  - [MVC](#2-mvc-model-view-controller)
  - [MVVM](#3-mvvm-model-view-viewmodel)
- [Folder Structure](#folder-structure)
- [Customization](#customization)
- [License](#license)

## Installation

1. Add `arch_generator` as a dev dependency in your `pubspec.yaml`:

```dart
dev_dependencies:
  arch_generator: 2.0.0
```

2. Run `dart pub get` to fetch the package.

## Usage

## 1. DDD (Domain Driven Design)

To generate the boilerplate code for your project, run the following command:

```dart 
dart pub run arch_generator --ddd build
```

This command will create a new folder structure and files for the DDD architecture.

## Folder Structure

The generated folder structure is as follows:

```
lib/
│
├── core/
│   ├── locator/
│   ├── services/
│   ├── constants/
│   └── utils/
│       ├── date_utils.dart
│
├── data/
│   ├── models/
│   ├── repositories/
│   ├── data_sources/
│   │   ├── remote/
│   │   └── local/
│
├── domain/
│   ├── entities/
│   ├── value_objects/
│   │   ├── EmailAddress.dart
│   │   └── Password.dart
│   ├── failures/
│   │   └── Failures.dart
│   └── repositories/
│
└── presentation/
    ├── state_management/
    ├── screens/
    └── widgets/
```

This folder structure organizes your code into domain, data, and presentation layers, following the DDD principles.

## 2. MVC (Model-View-Controller)

To generate the boilerplate code for your project, run the following command:

```dart 
dart pub run arch_generator --mvc build
```

This command will create a new folder structure and files for the MVC architecture.

## Folder Structure

The generated folder structure is as follows:

```
lib
└── core
    └── locator
    └── services
    └── constants
    └── utils
        └── global_functions.dart
└── data
    └── models
    └── repositories
    └── data_sources
        └── remote
        └── local
└── controllers
└── views
```

This folder structure organizes your code into model, view, and controller layers, following the MVC principles.

## 3. MVVM (Model-View-ViewModel)

To generate the boilerplate code for your project, run the following command:

```dart 
dart pub run arch_generator --mvvm build
```

This command will create a new folder structure and files for the MVVM architecture.

## Folder Structure

The generated folder structure is as follows:

```
lib
└── core
    └── locator
    └── services
    └── constants
    └── utils
        └── global_functions.dart
└── data
    └── models
    └── repositories
    └── data_sources
        └── remote
        └── local
└── view_models
└── views
```

This folder structure organizes your code into model, view, and ViewModel layers, following the MVVM principles.

## License

This project is licensed under the MIT License.

Remember to adjust the version number and any other information as needed. Save this README as `README.md` in the root directory of your package. This will help users understand how to use your package and provide a clear overview of its features and usage.
