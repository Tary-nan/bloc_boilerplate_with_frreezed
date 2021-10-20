// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'filtered_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FilteredEventTearOff {
  const _$FilteredEventTearOff();

  UpdateFilter updateFilter(VisibilityFilter filter) {
    return UpdateFilter(
      filter,
    );
  }

  UpdateTodos updateTodos(List<Todo> todos) {
    return UpdateTodos(
      todos,
    );
  }
}

/// @nodoc
const $FilteredEvent = _$FilteredEventTearOff();

/// @nodoc
mixin _$FilteredEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(VisibilityFilter filter) updateFilter,
    required TResult Function(List<Todo> todos) updateTodos,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(VisibilityFilter filter)? updateFilter,
    TResult Function(List<Todo> todos)? updateTodos,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(VisibilityFilter filter)? updateFilter,
    TResult Function(List<Todo> todos)? updateTodos,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateFilter value) updateFilter,
    required TResult Function(UpdateTodos value) updateTodos,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UpdateFilter value)? updateFilter,
    TResult Function(UpdateTodos value)? updateTodos,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateFilter value)? updateFilter,
    TResult Function(UpdateTodos value)? updateTodos,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilteredEventCopyWith<$Res> {
  factory $FilteredEventCopyWith(
          FilteredEvent value, $Res Function(FilteredEvent) then) =
      _$FilteredEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$FilteredEventCopyWithImpl<$Res>
    implements $FilteredEventCopyWith<$Res> {
  _$FilteredEventCopyWithImpl(this._value, this._then);

  final FilteredEvent _value;
  // ignore: unused_field
  final $Res Function(FilteredEvent) _then;
}

/// @nodoc
abstract class $UpdateFilterCopyWith<$Res> {
  factory $UpdateFilterCopyWith(
          UpdateFilter value, $Res Function(UpdateFilter) then) =
      _$UpdateFilterCopyWithImpl<$Res>;
  $Res call({VisibilityFilter filter});
}

/// @nodoc
class _$UpdateFilterCopyWithImpl<$Res> extends _$FilteredEventCopyWithImpl<$Res>
    implements $UpdateFilterCopyWith<$Res> {
  _$UpdateFilterCopyWithImpl(
      UpdateFilter _value, $Res Function(UpdateFilter) _then)
      : super(_value, (v) => _then(v as UpdateFilter));

  @override
  UpdateFilter get _value => super._value as UpdateFilter;

  @override
  $Res call({
    Object? filter = freezed,
  }) {
    return _then(UpdateFilter(
      filter == freezed
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as VisibilityFilter,
    ));
  }
}

/// @nodoc

class _$UpdateFilter implements UpdateFilter {
  _$UpdateFilter(this.filter);

  @override
  final VisibilityFilter filter;

  @override
  String toString() {
    return 'FilteredEvent.updateFilter(filter: $filter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateFilter &&
            (identical(other.filter, filter) ||
                const DeepCollectionEquality().equals(other.filter, filter)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(filter);

  @JsonKey(ignore: true)
  @override
  $UpdateFilterCopyWith<UpdateFilter> get copyWith =>
      _$UpdateFilterCopyWithImpl<UpdateFilter>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(VisibilityFilter filter) updateFilter,
    required TResult Function(List<Todo> todos) updateTodos,
  }) {
    return updateFilter(filter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(VisibilityFilter filter)? updateFilter,
    TResult Function(List<Todo> todos)? updateTodos,
  }) {
    return updateFilter?.call(filter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(VisibilityFilter filter)? updateFilter,
    TResult Function(List<Todo> todos)? updateTodos,
    required TResult orElse(),
  }) {
    if (updateFilter != null) {
      return updateFilter(filter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateFilter value) updateFilter,
    required TResult Function(UpdateTodos value) updateTodos,
  }) {
    return updateFilter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UpdateFilter value)? updateFilter,
    TResult Function(UpdateTodos value)? updateTodos,
  }) {
    return updateFilter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateFilter value)? updateFilter,
    TResult Function(UpdateTodos value)? updateTodos,
    required TResult orElse(),
  }) {
    if (updateFilter != null) {
      return updateFilter(this);
    }
    return orElse();
  }
}

abstract class UpdateFilter implements FilteredEvent {
  factory UpdateFilter(VisibilityFilter filter) = _$UpdateFilter;

  VisibilityFilter get filter => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateFilterCopyWith<UpdateFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateTodosCopyWith<$Res> {
  factory $UpdateTodosCopyWith(
          UpdateTodos value, $Res Function(UpdateTodos) then) =
      _$UpdateTodosCopyWithImpl<$Res>;
  $Res call({List<Todo> todos});
}

/// @nodoc
class _$UpdateTodosCopyWithImpl<$Res> extends _$FilteredEventCopyWithImpl<$Res>
    implements $UpdateTodosCopyWith<$Res> {
  _$UpdateTodosCopyWithImpl(
      UpdateTodos _value, $Res Function(UpdateTodos) _then)
      : super(_value, (v) => _then(v as UpdateTodos));

  @override
  UpdateTodos get _value => super._value as UpdateTodos;

  @override
  $Res call({
    Object? todos = freezed,
  }) {
    return _then(UpdateTodos(
      todos == freezed
          ? _value.todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<Todo>,
    ));
  }
}

/// @nodoc

class _$UpdateTodos implements UpdateTodos {
  _$UpdateTodos(this.todos);

  @override
  final List<Todo> todos;

  @override
  String toString() {
    return 'FilteredEvent.updateTodos(todos: $todos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateTodos &&
            (identical(other.todos, todos) ||
                const DeepCollectionEquality().equals(other.todos, todos)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(todos);

  @JsonKey(ignore: true)
  @override
  $UpdateTodosCopyWith<UpdateTodos> get copyWith =>
      _$UpdateTodosCopyWithImpl<UpdateTodos>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(VisibilityFilter filter) updateFilter,
    required TResult Function(List<Todo> todos) updateTodos,
  }) {
    return updateTodos(todos);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(VisibilityFilter filter)? updateFilter,
    TResult Function(List<Todo> todos)? updateTodos,
  }) {
    return updateTodos?.call(todos);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(VisibilityFilter filter)? updateFilter,
    TResult Function(List<Todo> todos)? updateTodos,
    required TResult orElse(),
  }) {
    if (updateTodos != null) {
      return updateTodos(todos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateFilter value) updateFilter,
    required TResult Function(UpdateTodos value) updateTodos,
  }) {
    return updateTodos(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UpdateFilter value)? updateFilter,
    TResult Function(UpdateTodos value)? updateTodos,
  }) {
    return updateTodos?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateFilter value)? updateFilter,
    TResult Function(UpdateTodos value)? updateTodos,
    required TResult orElse(),
  }) {
    if (updateTodos != null) {
      return updateTodos(this);
    }
    return orElse();
  }
}

abstract class UpdateTodos implements FilteredEvent {
  factory UpdateTodos(List<Todo> todos) = _$UpdateTodos;

  List<Todo> get todos => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateTodosCopyWith<UpdateTodos> get copyWith =>
      throw _privateConstructorUsedError;
}
