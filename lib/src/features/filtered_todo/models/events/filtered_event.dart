
import 'package:architecture_bloc/src/features/filtered_todo/models/visibility_filter.dart';
import 'package:architecture_bloc/src/features/todos/models/model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'filtered_event.freezed.dart';


@freezed
class FilteredEvent with _$FilteredEvent {
  factory FilteredEvent.updateFilter(VisibilityFilter filter) = UpdateFilter;
  factory FilteredEvent.updateTodos(List<Todo> todos) = UpdateTodos;
	
}
