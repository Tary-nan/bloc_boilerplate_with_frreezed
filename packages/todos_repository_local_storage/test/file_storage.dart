import 'dart:io';

import 'package:test/test.dart';
import 'package:todos_core_repository/src/todos_core_repository.dart';
import 'package:todos_repository_local_storage/src/file_storage.dart';

void main(List<String> args) {
  group('FileStorqge', () {
    final todos = [
      TodoEntity(task: 'Task', id: '1', note: 'Hallo', complet: false)
    ];
    final directory = Directory.systemTemp.createTemp('__storage_test__');
    final storage = FileStorage(
      '_test_tag_',
      () => directory,
    );

     tearDownAll(() async {
      final tempDirectory = await directory;

      tempDirectory.deleteSync(recursive: true);
    });

     test('Should persist TodoEntities to disk', () async {
      final file = await storage.saveTodos(todos);

      expect(file.existsSync(), isTrue);
    });

    test('Should load TodoEntities from disk', () async {
      final loadedTodos = await storage.loadTodos();

      expect(loadedTodos, todos);
    });

  });
}
