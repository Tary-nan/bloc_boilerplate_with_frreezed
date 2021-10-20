
import 'package:architecture_bloc/src/features/todos/models/model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'stat_event.freezed.dart';


@freezed
class StatEvent with _$StatEvent {
  factory StatEvent.updated(List<Todo> todos) = StatEventUpdated;
}
