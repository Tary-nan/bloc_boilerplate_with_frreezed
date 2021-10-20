
import 'package:architecture_bloc/src/features/filtered_todo/models/visibility_filter.dart';
import 'package:architecture_bloc/src/features/todos/models/model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'filtered_state.freezed.dart';


@freezed
class FilteredState with _$FilteredState {
  factory FilteredState.loading() = Loading;
  factory FilteredState.loadedSucces({
    required VisibilityFilter filteredTodo,
    required List<Todo> todos,
  }) = LoadedSucces;
	
}
