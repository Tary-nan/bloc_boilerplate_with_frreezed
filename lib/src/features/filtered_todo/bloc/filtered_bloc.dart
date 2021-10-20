import 'dart:async';

import 'package:architecture_bloc/src/features/filtered_todo/models/events/filtered_event.dart';
import 'package:architecture_bloc/src/features/filtered_todo/models/states/filtered_state.dart';
import 'package:architecture_bloc/src/features/filtered_todo/models/visibility_filter.dart';
import 'package:architecture_bloc/src/features/todos/bloc/todo.dart';
import 'package:architecture_bloc/src/features/todos/models/states/todo_state.dart';
import 'package:architecture_bloc/src/features/todos/models/todo.dart';
import 'package:bloc/bloc.dart';

class FilteredBloc extends Bloc<FilteredEvent, FilteredState> {
  final TodoBloc todoBloc;
  late StreamSubscription _todoSubscription;

  FilteredBloc({required this.todoBloc})
      : super((todoBloc.state is Success)
            ? FilteredState.loadedSucces(
                filteredTodo: VisibilityFilter.all,
                todos: (todoBloc.state as Success).todos)
            : FilteredState.loading()) {
    on<FilteredEvent>(_onEventFilter);

    _todoSubscription = todoBloc.stream.listen((event) {
      if (event is Success) {
        add(FilteredEvent.updateTodos(event.todos));
      }
    });
  }

  void _onEventFilter(FilteredEvent event, emit) {
    emit(event.when(updateFilter: updateFilter, updateTodos: updateTodos));
  }

  FilteredState? updateTodos(List<Todo> todos) {
    final visibilityFilter = state is LoadedSucces
        ? (state as LoadedSucces).filteredTodo
        : VisibilityFilter.all;

    return FilteredState.loadedSucces(
        filteredTodo: visibilityFilter,
        todos: _mapTodosToFilteredTodos(
          (todoBloc.state as Success).todos,
          visibilityFilter,
        ));
  }

  FilteredState? updateFilter(VisibilityFilter filter) {
    if (todoBloc.state is Success) {
      return FilteredState.loadedSucces(
        filteredTodo: VisibilityFilter.all,
        todos: _mapTodosToFilteredTodos(
          (todoBloc.state as Success).todos,
          filter,
        ),
      );
    }
  }

  List<Todo> _mapTodosToFilteredTodos(
      List<Todo> todos, VisibilityFilter filter) {
    return todos.where((todo) {
      if (filter == VisibilityFilter.all) {
        return true;
      } else if (filter == VisibilityFilter.active) {
        return !todo.complete;
      } else {
        return todo.complete;
      }
    }).toList();
  }

  @override
  Future<void> close() {
    _todoSubscription.cancel();
    return super.close();
  }
}
