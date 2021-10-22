
import 'package:architecture_bloc/src/features/todos/models/todo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_state.freezed.dart';


@freezed
class TodoState with _$TodoState {
  factory TodoState.loading() = LoadingTodoState;
  factory TodoState.success(List<Todo> todos) = Success;
  factory TodoState.failure() = Failure;
}
