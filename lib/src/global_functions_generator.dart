import 'dart:io';

Future<void> generateGlobalFunctions({required String path}) async {
  final filename = 'date_utils.dart';
  final fileContent = """
import 'package:intl/intl.dart';

/// Formats a [DateTime] object as a string in the format 'dd-MM-yyyy'.
///
/// The [date] parameter is the date to be formatted.
///
/// Returns a string representing the formatted date.
String formatDate(DateTime date) {
  return DateFormat('dd-MM-yyyy').format(date);
}
  """;

  final file = File('$path/$filename');
  final sink = file.openWrite();
  sink.write(fileContent);
  await sink.flush();
  await sink.close();
}