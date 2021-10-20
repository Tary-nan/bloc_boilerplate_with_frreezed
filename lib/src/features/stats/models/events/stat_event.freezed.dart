// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'stat_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$StatEventTearOff {
  const _$StatEventTearOff();

  StatEventUpdated updated(List<Todo> todos) {
    return StatEventUpdated(
      todos,
    );
  }
}

/// @nodoc
const $StatEvent = _$StatEventTearOff();

/// @nodoc
mixin _$StatEvent {
  List<Todo> get todos => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Todo> todos) updated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Todo> todos)? updated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Todo> todos)? updated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StatEventUpdated value) updated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StatEventUpdated value)? updated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StatEventUpdated value)? updated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StatEventCopyWith<StatEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatEventCopyWith<$Res> {
  factory $StatEventCopyWith(StatEvent value, $Res Function(StatEvent) then) =
      _$StatEventCopyWithImpl<$Res>;
  $Res call({List<Todo> todos});
}

/// @nodoc
class _$StatEventCopyWithImpl<$Res> implements $StatEventCopyWith<$Res> {
  _$StatEventCopyWithImpl(this._value, this._then);

  final StatEvent _value;
  // ignore: unused_field
  final $Res Function(StatEvent) _then;

  @override
  $Res call({
    Object? todos = freezed,
  }) {
    return _then(_value.copyWith(
      todos: todos == freezed
          ? _value.todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<Todo>,
    ));
  }
}

/// @nodoc
abstract class $StatEventUpdatedCopyWith<$Res>
    implements $StatEventCopyWith<$Res> {
  factory $StatEventUpdatedCopyWith(
          StatEventUpdated value, $Res Function(StatEventUpdated) then) =
      _$StatEventUpdatedCopyWithImpl<$Res>;
  @override
  $Res call({List<Todo> todos});
}

/// @nodoc
class _$StatEventUpdatedCopyWithImpl<$Res> extends _$StatEventCopyWithImpl<$Res>
    implements $StatEventUpdatedCopyWith<$Res> {
  _$StatEventUpdatedCopyWithImpl(
      StatEventUpdated _value, $Res Function(StatEventUpdated) _then)
      : super(_value, (v) => _then(v as StatEventUpdated));

  @override
  StatEventUpdated get _value => super._value as StatEventUpdated;

  @override
  $Res call({
    Object? todos = freezed,
  }) {
    return _then(StatEventUpdated(
      todos == freezed
          ? _value.todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<Todo>,
    ));
  }
}

/// @nodoc

class _$StatEventUpdated implements StatEventUpdated {
  _$StatEventUpdated(this.todos);

  @override
  final List<Todo> todos;

  @override
  String toString() {
    return 'StatEvent.updated(todos: $todos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is StatEventUpdated &&
            (identical(other.todos, todos) ||
                const DeepCollectionEquality().equals(other.todos, todos)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(todos);

  @JsonKey(ignore: true)
  @override
  $StatEventUpdatedCopyWith<StatEventUpdated> get copyWith =>
      _$StatEventUpdatedCopyWithImpl<StatEventUpdated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Todo> todos) updated,
  }) {
    return updated(todos);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Todo> todos)? updated,
  }) {
    return updated?.call(todos);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Todo> todos)? updated,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated(todos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StatEventUpdated value) updated,
  }) {
    return updated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StatEventUpdated value)? updated,
  }) {
    return updated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StatEventUpdated value)? updated,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated(this);
    }
    return orElse();
  }
}

abstract class StatEventUpdated implements StatEvent {
  factory StatEventUpdated(List<Todo> todos) = _$StatEventUpdated;

  @override
  List<Todo> get todos => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $StatEventUpdatedCopyWith<StatEventUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}
