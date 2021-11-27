import 'dart:async';

import 'package:architecture_bloc/src/features/filtered_todo/models/events/filtered_event.dart';
import 'package:architecture_bloc/src/features/filtered_todo/models/states/filtered_state.dart';
import 'package:architecture_bloc/src/features/filtered_todo/models/visibility_filter.dart';
import 'package:architecture_bloc/src/features/todos/bloc/todo.dart';
import 'package:architecture_bloc/src/features/todos/models/states/todo_state.dart';
import 'package:architecture_bloc/src/features/todos/models/todo.dart';
import 'package:bloc/bloc.dart';

import '../../features.dart';

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

      _todoSubscription = todoBloc.stream.listen((state) {
      if (state is Success) {
        add(FilteredEvent.updateTodos(((todoBloc.state as Success).todos)));
      }
    });
  }

  void _onEventFilter(FilteredEvent event, emit) {
    event.when(
      ///
      /// EVENT . UPDATED FILTER
      ///
      updateFilter: (VisibilityFilter filter) {
      if (todoBloc.state is Success) {
        final upddatedTodos =
            _mapTodosToFilteredTodos((todoBloc.state as Success).todos, filter);

        emit(FilteredState.loadedSucces(
          filteredTodo: filter,
          todos: upddatedTodos,
        ));
      }
    }, 
      ///
      /// EVENT . UPDATED TODOS
      ///
    updateTodos: (List<Todo> todos) {
      final currentFilter = state is LoadedSucces
          ? (state as LoadedSucces).filteredTodo
          : VisibilityFilter.all;

      final updatedTodos = _mapTodosToFilteredTodos(
        (todoBloc.state as Success).todos,
        currentFilter,
      );

      emit(FilteredState.loadedSucces(
          filteredTodo: currentFilter, todos: updatedTodos));
    });
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
