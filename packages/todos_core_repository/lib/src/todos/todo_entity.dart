import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_entity.freezed.dart';
part 'todo_entity.g.dart';

@freezed
class TodoEntity with _$TodoEntity {
  factory TodoEntity({
    required String id,
    required String note,
    required String task,
    required bool complet,
  }) = _TodoEntity;
	
  factory TodoEntity.fromJson(Map<String, dynamic> json) =>
			_$TodoEntityFromJson(json);
}
