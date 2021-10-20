// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TodoEntity _$$_TodoEntityFromJson(Map<String, dynamic> json) =>
    _$_TodoEntity(
      id: json['id'] as String,
      note: json['note'] as String,
      task: json['task'] as String,
      complet: json['complet'] as bool,
    );

Map<String, dynamic> _$$_TodoEntityToJson(_$_TodoEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'note': instance.note,
      'task': instance.task,
      'complet': instance.complet,
    };
