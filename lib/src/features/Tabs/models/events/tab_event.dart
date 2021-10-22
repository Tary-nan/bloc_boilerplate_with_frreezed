
import 'package:architecture_bloc/src/features/Tabs/models/states/tab_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tab_event.freezed.dart';


@freezed
class TabEvent with _$TabEvent {
  factory TabEvent.updated(AppTab tab) = TabEventUpdated;
}
