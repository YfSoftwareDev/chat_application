import 'dart:io';

class Repository {
  Future<File> _localFile(String fileName) async {
    return File('lib/data/json/$fileName.json');
  }

  Future<void> writeToFile(String json, String fileName) async {
    final file = await _localFile(fileName);

    file.writeAsStringSync(json);
  }

  Future<String> readFromFile(String fileName) async {
    final file = await _localFile(fileName);
    String contents = await file.readAsString();
    return contents;
  }
}
