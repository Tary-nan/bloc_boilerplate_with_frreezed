// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'filtered_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FilteredStateTearOff {
  const _$FilteredStateTearOff();

  Loading loading() {
    return Loading();
  }

  LoadedSucces loadedSucces(
      {required VisibilityFilter filteredTodo, required List<Todo> todos}) {
    return LoadedSucces(
      filteredTodo: filteredTodo,
      todos: todos,
    );
  }
}

/// @nodoc
const $FilteredState = _$FilteredStateTearOff();

/// @nodoc
mixin _$FilteredState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(VisibilityFilter filteredTodo, List<Todo> todos)
        loadedSucces,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(VisibilityFilter filteredTodo, List<Todo> todos)?
        loadedSucces,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(VisibilityFilter filteredTodo, List<Todo> todos)?
        loadedSucces,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(LoadedSucces value) loadedSucces,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(LoadedSucces value)? loadedSucces,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(LoadedSucces value)? loadedSucces,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilteredStateCopyWith<$Res> {
  factory $FilteredStateCopyWith(
          FilteredState value, $Res Function(FilteredState) then) =
      _$FilteredStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FilteredStateCopyWithImpl<$Res>
    implements $FilteredStateCopyWith<$Res> {
  _$FilteredStateCopyWithImpl(this._value, this._then);

  final FilteredState _value;
  // ignore: unused_field
  final $Res Function(FilteredState) _then;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res> extends _$FilteredStateCopyWithImpl<$Res>
    implements $LoadingCopyWith<$Res> {
  _$LoadingCopyWithImpl(Loading _value, $Res Function(Loading) _then)
      : super(_value, (v) => _then(v as Loading));

  @override
  Loading get _value => super._value as Loading;
}

/// @nodoc

class _$Loading implements Loading {
  _$Loading();

  @override
  String toString() {
    return 'FilteredState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(VisibilityFilter filteredTodo, List<Todo> todos)
        loadedSucces,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(VisibilityFilter filteredTodo, List<Todo> todos)?
        loadedSucces,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(VisibilityFilter filteredTodo, List<Todo> todos)?
        loadedSucces,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(LoadedSucces value) loadedSucces,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(LoadedSucces value)? loadedSucces,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(LoadedSucces value)? loadedSucces,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements FilteredState {
  factory Loading() = _$Loading;
}

/// @nodoc
abstract class $LoadedSuccesCopyWith<$Res> {
  factory $LoadedSuccesCopyWith(
          LoadedSucces value, $Res Function(LoadedSucces) then) =
      _$LoadedSuccesCopyWithImpl<$Res>;
  $Res call({VisibilityFilter filteredTodo, List<Todo> todos});
}

/// @nodoc
class _$LoadedSuccesCopyWithImpl<$Res> extends _$FilteredStateCopyWithImpl<$Res>
    implements $LoadedSuccesCopyWith<$Res> {
  _$LoadedSuccesCopyWithImpl(
      LoadedSucces _value, $Res Function(LoadedSucces) _then)
      : super(_value, (v) => _then(v as LoadedSucces));

  @override
  LoadedSucces get _value => super._value as LoadedSucces;

  @override
  $Res call({
    Object? filteredTodo = freezed,
    Object? todos = freezed,
  }) {
    return _then(LoadedSucces(
      filteredTodo: filteredTodo == freezed
          ? _value.filteredTodo
          : filteredTodo // ignore: cast_nullable_to_non_nullable
              as VisibilityFilter,
      todos: todos == freezed
          ? _value.todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<Todo>,
    ));
  }
}

/// @nodoc

class _$LoadedSucces implements LoadedSucces {
  _$LoadedSucces({required this.filteredTodo, required this.todos});

  @override
  final VisibilityFilter filteredTodo;
  @override
  final List<Todo> todos;

  @override
  String toString() {
    return 'FilteredState.loadedSucces(filteredTodo: $filteredTodo, todos: $todos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadedSucces &&
            (identical(other.filteredTodo, filteredTodo) ||
                const DeepCollectionEquality()
                    .equals(other.filteredTodo, filteredTodo)) &&
            (identical(other.todos, todos) ||
                const DeepCollectionEquality().equals(other.todos, todos)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(filteredTodo) ^
      const DeepCollectionEquality().hash(todos);

  @JsonKey(ignore: true)
  @override
  $LoadedSuccesCopyWith<LoadedSucces> get copyWith =>
      _$LoadedSuccesCopyWithImpl<LoadedSucces>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(VisibilityFilter filteredTodo, List<Todo> todos)
        loadedSucces,
  }) {
    return loadedSucces(filteredTodo, todos);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(VisibilityFilter filteredTodo, List<Todo> todos)?
        loadedSucces,
  }) {
    return loadedSucces?.call(filteredTodo, todos);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(VisibilityFilter filteredTodo, List<Todo> todos)?
        loadedSucces,
    required TResult orElse(),
  }) {
    if (loadedSucces != null) {
      return loadedSucces(filteredTodo, todos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(LoadedSucces value) loadedSucces,
  }) {
    return loadedSucces(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(LoadedSucces value)? loadedSucces,
  }) {
    return loadedSucces?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(LoadedSucces value)? loadedSucces,
    required TResult orElse(),
  }) {
    if (loadedSucces != null) {
      return loadedSucces(this);
    }
    return orElse();
  }
}

abstract class LoadedSucces implements FilteredState {
  factory LoadedSucces(
      {required VisibilityFilter filteredTodo,
      required List<Todo> todos}) = _$LoadedSucces;

  VisibilityFilter get filteredTodo => throw _privateConstructorUsedError;
  List<Todo> get todos => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoadedSuccesCopyWith<LoadedSucces> get copyWith =>
      throw _privateConstructorUsedError;
}
