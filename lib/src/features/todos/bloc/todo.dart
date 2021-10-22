import 'package:architecture_bloc/src/features/todos/models/events/todo_event.dart';
import 'package:architecture_bloc/src/features/todos/models/states/todo_state.dart';
import 'package:architecture_bloc/src/features/todos/models/todo.dart';
import 'package:bloc/bloc.dart';
// ignore: implementation_imports
import 'package:todos_repository_local_storage/src/todos_repository_local_storage.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  final KeyValueStorage repositoryTodo;
  
  TodoBloc({required this.repositoryTodo }) : super(TodoState.loading()) {
    on<TodoEvent>(_onEventTodos);
  }

  Future<void> _onEventTodos(TodoEvent event, emit) async {
    await event.when(

      /// Event : loadedSuccess Todo
      loadedSuccess: () async {
      try {
        final todos = await repositoryTodo.loadTodos();
        emit(TodoState.success(
            todos.map((entity) => Todo.fromEntity(entity)).toList()));
      } catch (_) {
        emit(TodoState.failure());
      }
    },

        /// Event :  Add Todo
        added: (Todo todo) async {
      if (state is Success) {
        final updatedTodo =
            List<Todo>.from((state as Success).todos..add(todo));
        emit(TodoState.success(updatedTodo));
        await _saveTodos(updatedTodo); //isolate requis ici ...
      }
    },

        ///  Event : updated Todo

        updated: (Todo newTodo) async {
      if (state is Success) {
        final List<Todo> updatedTodos = (state as Success).todos.map((todo) {
          return todo.id == newTodo.id ? newTodo : todo;
        }).toList();
        emit(TodoState.success(updatedTodos));
        await _saveTodos(updatedTodos);
      }
    },

        ///  Event : delete Todo

        deleted: (Todo currentTodo) async {
      if (state is Success) {
        final updatedTodos = (state as Success)
            .todos
            .where((todo) => todo.id != currentTodo.id)
            .toList();
        emit(TodoState.success(updatedTodos));
        await _saveTodos(updatedTodos);
      }
    },

        ///  Event : clearCompleted

        clearCompleted: () async {
      if (state is Success) {
        final List<Todo> updatedTodos =
            (state as Success).todos.where((todo) => !todo.complete).toList();

        emit(TodoState.success(updatedTodos));
        await _saveTodos(updatedTodos);
      }
    },

        ///  Event : toggleAll

        toggleAll: () async {
      if (state is Success) {
        final allComplete =
            (state as Success).todos.every((todo) => todo.complete);
        final List<Todo> updatedTodos = (state as Success)
            .todos
            .map((todo) => todo.copyWith(complet: !allComplete))
            .toList();

        emit(TodoState.success(updatedTodos));
        await _saveTodos(updatedTodos);
      }
    });
  }

  Future _saveTodos(List<Todo> todos) {
    return repositoryTodo.saveTodos(
      todos.map((todo) => todo.toEntity()).toList(),
    );
  }
}
