import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:todos_core_repository/src/todos_core_repository.dart';

/// Loads and saves a List of Todos using a text file stored on the device.
///
/// Note: This class has no direct dependencies on any Flutter dependencies.
/// Instead, the `getDirectory` method should be injected. This allows for
/// testing.
///
///

class KeyValueStorage implements TodosRepository {
  final String key;
  final Future<SharedPreferences> store;
  final JsonCodec codec;

  const KeyValueStorage(this.key, this.store, [this.codec = json]);

  @override
  Future<List<TodoEntity>> loadTodos() async {
    if ((await store).getString(key) != null) {
      print('second');

      return ((codec.decode((await store).getString(key)!) as Map)['todos']
              as List)
          .map((json) => TodoEntity.fromJson(json))
          .toList(growable: false);
    }
    print('first');

    (await store).setString(key, codec.encode({'todos': <TodoEntity>[]}));
    return <TodoEntity>[];
  }

  @override
  Future<bool> saveTodos(List<TodoEntity> todos) async {
    return (await store).setString(
      key,
      codec.encode({
        'todos': todos.map((todo) => todo.toJson()).toList(),
      }),
    );
  }
}

class FileStorage implements TodosRepository {
  final String tag;
  final Future<Directory> Function() getDirectory;

  const FileStorage(
    this.tag,
    this.getDirectory,
  );

  @override
  Future<List<TodoEntity>> loadTodos() async {
    final file = await _getLocalFile();
    final string = await file.readAsString();
    final json = JsonDecoder().convert(string);
    final todos = (json['todos'])
        .map<TodoEntity>((todo) => TodoEntity.fromJson(todo))
        .toList();

    return todos;
  }

  @override
  Future<File> saveTodos(List<TodoEntity> todos) async {
    final file = await _getLocalFile();

    return file.writeAsString(JsonEncoder().convert({
      'todos': todos.map((todo) => todo.toJson()).toList(),
    }));
  }

  Future<File> _getLocalFile() async {
    final dir = await getDirectory();

    return File('${dir.path}/$tag.json');
  }

  Future<FileSystemEntity> clean() async {
    final file = await _getLocalFile();

    return file.delete();
  }
}
