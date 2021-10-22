import 'package:freezed_annotation/freezed_annotation.dart';
// ignore: implementation_imports
import 'package:todos_core_repository/src/todos_core_repository.dart';

part 'todo.freezed.dart';
part 'todo.g.dart';

@freezed
class Todo with _$Todo {
  const Todo._(); // Added constructor
  factory Todo({
    required String id,
    required String note,
    required String task,
    required bool complet,
  }) = _Todo;

  String get idTodo => id;
  String get noteTodo => note;
  String get taskTodo => task;
  bool get complete => complet;

  factory Todo.fromJson(Map<String, dynamic> json) => _$TodoFromJson(json);

  TodoEntity toEntity() {
    return TodoEntity(
        id: idTodo, note: noteTodo, task: taskTodo, complet: complete);
  }

  static Todo fromEntity(TodoEntity entity) {
    return Todo(
        id: entity.id,
        note: entity.note,
        task: entity.task,
        complet: entity.complet);
  }
}
