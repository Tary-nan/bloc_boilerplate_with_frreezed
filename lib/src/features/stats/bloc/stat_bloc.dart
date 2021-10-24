import 'dart:async';

import 'package:architecture_bloc/src/features/stats/models/model.dart';
import 'package:architecture_bloc/src/features/todos/bloc/todo.dart';
import 'package:architecture_bloc/src/features/todos/models/model.dart';
import 'package:bloc/bloc.dart';

class StatBloc extends Bloc<StatEvent, StatState> {
  final TodoBloc todoBloc;
  late StreamSubscription _todoStreamSubscription;

  StatBloc(this.todoBloc) : super(StatState.loading()) {
    void onTodosStateChanged(state) {
      if (state is Success) {
        add(StatEvent.updated((state.todos)));
      }
    }

    on<StatEvent>(_onEventStats);

    onTodosStateChanged(todoBloc.state);
    _todoStreamSubscription = todoBloc.stream.listen(onTodosStateChanged);
  }

  void _onEventStats(StatEvent event, Emitter<StatState?> emit) {
    emit(event.when(updated: updated));
  }

  @override
  Future<void> close() {
    _todoStreamSubscription.cancel();
    return super.close();
  }

  StatState? updated(List<Todo> todos) {
    final numActive = todos.where((todo) => !todo.complete).toList().length;
    final numCompleted = todos.where((todo) => todo.complete).toList().length;
    return StatState.loadedSuccess(
        numActive: numActive, numComplet: numCompleted);
  }
}
