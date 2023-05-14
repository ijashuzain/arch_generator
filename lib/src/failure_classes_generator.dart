import 'dart:io';

Future<void> generateFailureClasses({required String path}) async {
  final filename = 'Failures.dart';
  final fileContent = """
abstract class Failure {
  final String message;

  Failure(this.message);
}

class ServerFailure extends Failure {
  ServerFailure(String message) : super(message);
}

class CacheFailure extends Failure {
  CacheFailure(String message) : super(message);
}

class InvalidInputFailure extends Failure {
  InvalidInputFailure(String message) : super(message);
}
  """;

  final file = File('$path/$filename');
  final sink = file.openWrite();
  sink.write(fileContent);
  await sink.flush();
  await sink.close();
}