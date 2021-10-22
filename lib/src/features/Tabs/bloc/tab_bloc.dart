import 'package:architecture_bloc/src/features/Tabs/models/events/tab_event.dart';
import 'package:architecture_bloc/src/features/Tabs/models/states/tab_state.dart';
import 'package:bloc/bloc.dart';

class TabBloc extends Bloc<TabEvent, AppTab> {
  TabBloc() : super(AppTab.todos) {
    on<TabEvent>(_onEventTab);
  }

  void _onEventTab(TabEvent event, Emitter<AppTab> emit) {
    event.when(updated: (AppTab tab) {
      if (event is TabEventUpdated) {
        emit(tab);
      }
    });
  }
}
