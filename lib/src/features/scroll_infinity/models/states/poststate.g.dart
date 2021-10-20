// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'poststate.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$Data _$$DataFromJson(Map<String, dynamic> json) => _$Data(
      posts: (json['posts'] as List<dynamic>)
          .map((e) => Post.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: _$enumDecode(_$PostStatusEnumMap, json['status']),
      hasReachedMax: json['hasReachedMax'] as bool,
    );

Map<String, dynamic> _$$DataToJson(_$Data instance) => <String, dynamic>{
      'posts': instance.posts,
      'status': _$PostStatusEnumMap[instance.status],
      'hasReachedMax': instance.hasReachedMax,
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

const _$PostStatusEnumMap = {
  PostStatus.initial: 'initial',
  PostStatus.success: 'success',
  PostStatus.failure: 'failure',
};
