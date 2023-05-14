import 'dart:io';

Future<void> generateValueObjects({required String path}) async {
  final filesToGenerate = {
    'Email.dart': """
class Email {
  final String value;

  Email(this.value) {
    if (!RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\\\\.[a-zA-Z]+").hasMatch(value)) {
      throw FormatException("Invalid email format");
    }
  }
}
    """,
    'Password.dart': """
class Password {
  final String value;

  Password(this.value) {
    if (!RegExp(r"^(?=.*[A-Za-z])(?=.*\\\\d)[A-Za-z\\\\d]{8,}\$").hasMatch(value)) {
      throw FormatException("Invalid password format");
    }
  }
}
    """,
    'FullName.dart': """
class FullName {
  final String value;

  FullName(this.value) {
    if (value.trim().split(' ').length < 2) {
      throw FormatException("Invalid full name format");
    }
  }
}
    """,
    'PhoneNumber.dart': """
class PhoneNumber {
  final String value;

  PhoneNumber(this.value) {
    if (!RegExp(r"^(?:[+0]9)?[0-9]{10}\$").hasMatch(value)) {
      throw FormatException("Invalid phone number format");
    }
  }
}
    """
  };

  for (var filename in filesToGenerate.keys) {
    final file = File('$path/$filename');
    final sink = file.openWrite();
    sink.write(filesToGenerate[filename]);
    await sink.flush();
    await sink.close();
  }
}