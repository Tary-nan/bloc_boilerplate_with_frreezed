
import 'package:architecture_bloc/src/features/todos/models/todo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_event.freezed.dart';


@freezed
class TodoEvent with _$TodoEvent {
  factory TodoEvent.loadedSuccess() = LoadedSuccess;
  factory TodoEvent.added(Todo todo) = Added;
  factory TodoEvent.updated(Todo todo) = Updated;
  factory TodoEvent.deleted(Todo todo) = Deleted;
  factory TodoEvent.clearCompleted() = ClearCompleted;
  factory TodoEvent.toggleAll() = ToggleAll;
}
