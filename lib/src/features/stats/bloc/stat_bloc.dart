import 'dart:async';

import 'package:architecture_bloc/src/features/stats/models/model.dart';
import 'package:architecture_bloc/src/features/todos/bloc/todo.dart';
import 'package:architecture_bloc/src/features/todos/models/model.dart';
import 'package:bloc/bloc.dart';

class StatBloc extends Bloc<StatEvent, StatState> {
  final TodoBloc todoBloc;
  late StreamSubscription _todoStreamSubscription;

  StatBloc(this.todoBloc) : super(StatState.loading()) {
    print('------------------');
    on<StatEvent>(_onEventStats);
    _todoStreamSubscription = todoBloc.stream.listen((event) {
      print('----------$event--------');
      if (event is Success) {
        add(StatEvent.updated((event.todos)));
      }
    });
  }

  void _onEventStats(StatEvent event, Emitter<StatState?> emit) {
        print('--------- yo ---------');

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
