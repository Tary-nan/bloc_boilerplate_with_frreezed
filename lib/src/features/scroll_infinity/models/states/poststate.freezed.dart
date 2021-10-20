// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'poststate.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PostState _$PostStateFromJson(Map<String, dynamic> json) {
  return Data.fromJson(json);
}

/// @nodoc
class _$PostStateTearOff {
  const _$PostStateTearOff();

  Data call(
      {required List<Post> posts,
      required PostStatus status,
      required bool hasReachedMax}) {
    return Data(
      posts: posts,
      status: status,
      hasReachedMax: hasReachedMax,
    );
  }

  PostState fromJson(Map<String, Object> json) {
    return PostState.fromJson(json);
  }
}

/// @nodoc
const $PostState = _$PostStateTearOff();

/// @nodoc
mixin _$PostState {
  List<Post> get posts => throw _privateConstructorUsedError;
  PostStatus get status => throw _privateConstructorUsedError;
  bool get hasReachedMax => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostStateCopyWith<PostState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostStateCopyWith<$Res> {
  factory $PostStateCopyWith(PostState value, $Res Function(PostState) then) =
      _$PostStateCopyWithImpl<$Res>;
  $Res call({List<Post> posts, PostStatus status, bool hasReachedMax});
}

/// @nodoc
class _$PostStateCopyWithImpl<$Res> implements $PostStateCopyWith<$Res> {
  _$PostStateCopyWithImpl(this._value, this._then);

  final PostState _value;
  // ignore: unused_field
  final $Res Function(PostState) _then;

  @override
  $Res call({
    Object? posts = freezed,
    Object? status = freezed,
    Object? hasReachedMax = freezed,
  }) {
    return _then(_value.copyWith(
      posts: posts == freezed
          ? _value.posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<Post>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PostStatus,
      hasReachedMax: hasReachedMax == freezed
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class $DataCopyWith<$Res> implements $PostStateCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res>;
  @override
  $Res call({List<Post> posts, PostStatus status, bool hasReachedMax});
}

/// @nodoc
class _$DataCopyWithImpl<$Res> extends _$PostStateCopyWithImpl<$Res>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(Data _value, $Res Function(Data) _then)
      : super(_value, (v) => _then(v as Data));

  @override
  Data get _value => super._value as Data;

  @override
  $Res call({
    Object? posts = freezed,
    Object? status = freezed,
    Object? hasReachedMax = freezed,
  }) {
    return _then(Data(
      posts: posts == freezed
          ? _value.posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<Post>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PostStatus,
      hasReachedMax: hasReachedMax == freezed
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Data implements Data {
  _$Data(
      {required this.posts, required this.status, required this.hasReachedMax});

  factory _$Data.fromJson(Map<String, dynamic> json) => _$$DataFromJson(json);

  @override
  final List<Post> posts;
  @override
  final PostStatus status;
  @override
  final bool hasReachedMax;

  @override
  String toString() {
    return 'PostState(posts: $posts, status: $status, hasReachedMax: $hasReachedMax)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Data &&
            (identical(other.posts, posts) ||
                const DeepCollectionEquality().equals(other.posts, posts)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.hasReachedMax, hasReachedMax) ||
                const DeepCollectionEquality()
                    .equals(other.hasReachedMax, hasReachedMax)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(posts) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(hasReachedMax);

  @JsonKey(ignore: true)
  @override
  $DataCopyWith<Data> get copyWith =>
      _$DataCopyWithImpl<Data>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataToJson(this);
  }
}

abstract class Data implements PostState {
  factory Data(
      {required List<Post> posts,
      required PostStatus status,
      required bool hasReachedMax}) = _$Data;

  factory Data.fromJson(Map<String, dynamic> json) = _$Data.fromJson;

  @override
  List<Post> get posts => throw _privateConstructorUsedError;
  @override
  PostStatus get status => throw _privateConstructorUsedError;
  @override
  bool get hasReachedMax => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}
