// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'todo_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TodoEventTearOff {
  const _$TodoEventTearOff();

  LoadedSuccess loadedSuccess() {
    return LoadedSuccess();
  }

  Added added(Todo todo) {
    return Added(
      todo,
    );
  }

  Updated updated(Todo todo) {
    return Updated(
      todo,
    );
  }

  Deleted deleted(Todo todo) {
    return Deleted(
      todo,
    );
  }

  ClearCompleted clearCompleted() {
    return ClearCompleted();
  }

  ToggleAll toggleAll() {
    return ToggleAll();
  }
}

/// @nodoc
const $TodoEvent = _$TodoEventTearOff();

/// @nodoc
mixin _$TodoEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadedSuccess,
    required TResult Function(Todo todo) added,
    required TResult Function(Todo todo) updated,
    required TResult Function(Todo todo) deleted,
    required TResult Function() clearCompleted,
    required TResult Function() toggleAll,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadedSuccess,
    TResult Function(Todo todo)? added,
    TResult Function(Todo todo)? updated,
    TResult Function(Todo todo)? deleted,
    TResult Function()? clearCompleted,
    TResult Function()? toggleAll,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadedSuccess,
    TResult Function(Todo todo)? added,
    TResult Function(Todo todo)? updated,
    TResult Function(Todo todo)? deleted,
    TResult Function()? clearCompleted,
    TResult Function()? toggleAll,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadedSuccess value) loadedSuccess,
    required TResult Function(Added value) added,
    required TResult Function(Updated value) updated,
    required TResult Function(Deleted value) deleted,
    required TResult Function(ClearCompleted value) clearCompleted,
    required TResult Function(ToggleAll value) toggleAll,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadedSuccess value)? loadedSuccess,
    TResult Function(Added value)? added,
    TResult Function(Updated value)? updated,
    TResult Function(Deleted value)? deleted,
    TResult Function(ClearCompleted value)? clearCompleted,
    TResult Function(ToggleAll value)? toggleAll,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadedSuccess value)? loadedSuccess,
    TResult Function(Added value)? added,
    TResult Function(Updated value)? updated,
    TResult Function(Deleted value)? deleted,
    TResult Function(ClearCompleted value)? clearCompleted,
    TResult Function(ToggleAll value)? toggleAll,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoEventCopyWith<$Res> {
  factory $TodoEventCopyWith(TodoEvent value, $Res Function(TodoEvent) then) =
      _$TodoEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$TodoEventCopyWithImpl<$Res> implements $TodoEventCopyWith<$Res> {
  _$TodoEventCopyWithImpl(this._value, this._then);

  final TodoEvent _value;
  // ignore: unused_field
  final $Res Function(TodoEvent) _then;
}

/// @nodoc
abstract class $LoadedSuccessCopyWith<$Res> {
  factory $LoadedSuccessCopyWith(
          LoadedSuccess value, $Res Function(LoadedSuccess) then) =
      _$LoadedSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadedSuccessCopyWithImpl<$Res> extends _$TodoEventCopyWithImpl<$Res>
    implements $LoadedSuccessCopyWith<$Res> {
  _$LoadedSuccessCopyWithImpl(
      LoadedSuccess _value, $Res Function(LoadedSuccess) _then)
      : super(_value, (v) => _then(v as LoadedSuccess));

  @override
  LoadedSuccess get _value => super._value as LoadedSuccess;
}

/// @nodoc

class _$LoadedSuccess implements LoadedSuccess {
  _$LoadedSuccess();

  @override
  String toString() {
    return 'TodoEvent.loadedSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadedSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadedSuccess,
    required TResult Function(Todo todo) added,
    required TResult Function(Todo todo) updated,
    required TResult Function(Todo todo) deleted,
    required TResult Function() clearCompleted,
    required TResult Function() toggleAll,
  }) {
    return loadedSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadedSuccess,
    TResult Function(Todo todo)? added,
    TResult Function(Todo todo)? updated,
    TResult Function(Todo todo)? deleted,
    TResult Function()? clearCompleted,
    TResult Function()? toggleAll,
  }) {
    return loadedSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadedSuccess,
    TResult Function(Todo todo)? added,
    TResult Function(Todo todo)? updated,
    TResult Function(Todo todo)? deleted,
    TResult Function()? clearCompleted,
    TResult Function()? toggleAll,
    required TResult orElse(),
  }) {
    if (loadedSuccess != null) {
      return loadedSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadedSuccess value) loadedSuccess,
    required TResult Function(Added value) added,
    required TResult Function(Updated value) updated,
    required TResult Function(Deleted value) deleted,
    required TResult Function(ClearCompleted value) clearCompleted,
    required TResult Function(ToggleAll value) toggleAll,
  }) {
    return loadedSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadedSuccess value)? loadedSuccess,
    TResult Function(Added value)? added,
    TResult Function(Updated value)? updated,
    TResult Function(Deleted value)? deleted,
    TResult Function(ClearCompleted value)? clearCompleted,
    TResult Function(ToggleAll value)? toggleAll,
  }) {
    return loadedSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadedSuccess value)? loadedSuccess,
    TResult Function(Added value)? added,
    TResult Function(Updated value)? updated,
    TResult Function(Deleted value)? deleted,
    TResult Function(ClearCompleted value)? clearCompleted,
    TResult Function(ToggleAll value)? toggleAll,
    required TResult orElse(),
  }) {
    if (loadedSuccess != null) {
      return loadedSuccess(this);
    }
    return orElse();
  }
}

abstract class LoadedSuccess implements TodoEvent {
  factory LoadedSuccess() = _$LoadedSuccess;
}

/// @nodoc
abstract class $AddedCopyWith<$Res> {
  factory $AddedCopyWith(Added value, $Res Function(Added) then) =
      _$AddedCopyWithImpl<$Res>;
  $Res call({Todo todo});

  $TodoCopyWith<$Res> get todo;
}

/// @nodoc
class _$AddedCopyWithImpl<$Res> extends _$TodoEventCopyWithImpl<$Res>
    implements $AddedCopyWith<$Res> {
  _$AddedCopyWithImpl(Added _value, $Res Function(Added) _then)
      : super(_value, (v) => _then(v as Added));

  @override
  Added get _value => super._value as Added;

  @override
  $Res call({
    Object? todo = freezed,
  }) {
    return _then(Added(
      todo == freezed
          ? _value.todo
          : todo // ignore: cast_nullable_to_non_nullable
              as Todo,
    ));
  }

  @override
  $TodoCopyWith<$Res> get todo {
    return $TodoCopyWith<$Res>(_value.todo, (value) {
      return _then(_value.copyWith(todo: value));
    });
  }
}

/// @nodoc

class _$Added implements Added {
  _$Added(this.todo);

  @override
  final Todo todo;

  @override
  String toString() {
    return 'TodoEvent.added(todo: $todo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Added &&
            (identical(other.todo, todo) ||
                const DeepCollectionEquality().equals(other.todo, todo)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(todo);

  @JsonKey(ignore: true)
  @override
  $AddedCopyWith<Added> get copyWith =>
      _$AddedCopyWithImpl<Added>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadedSuccess,
    required TResult Function(Todo todo) added,
    required TResult Function(Todo todo) updated,
    required TResult Function(Todo todo) deleted,
    required TResult Function() clearCompleted,
    required TResult Function() toggleAll,
  }) {
    return added(todo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadedSuccess,
    TResult Function(Todo todo)? added,
    TResult Function(Todo todo)? updated,
    TResult Function(Todo todo)? deleted,
    TResult Function()? clearCompleted,
    TResult Function()? toggleAll,
  }) {
    return added?.call(todo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadedSuccess,
    TResult Function(Todo todo)? added,
    TResult Function(Todo todo)? updated,
    TResult Function(Todo todo)? deleted,
    TResult Function()? clearCompleted,
    TResult Function()? toggleAll,
    required TResult orElse(),
  }) {
    if (added != null) {
      return added(todo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadedSuccess value) loadedSuccess,
    required TResult Function(Added value) added,
    required TResult Function(Updated value) updated,
    required TResult Function(Deleted value) deleted,
    required TResult Function(ClearCompleted value) clearCompleted,
    required TResult Function(ToggleAll value) toggleAll,
  }) {
    return added(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadedSuccess value)? loadedSuccess,
    TResult Function(Added value)? added,
    TResult Function(Updated value)? updated,
    TResult Function(Deleted value)? deleted,
    TResult Function(ClearCompleted value)? clearCompleted,
    TResult Function(ToggleAll value)? toggleAll,
  }) {
    return added?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadedSuccess value)? loadedSuccess,
    TResult Function(Added value)? added,
    TResult Function(Updated value)? updated,
    TResult Function(Deleted value)? deleted,
    TResult Function(ClearCompleted value)? clearCompleted,
    TResult Function(ToggleAll value)? toggleAll,
    required TResult orElse(),
  }) {
    if (added != null) {
      return added(this);
    }
    return orElse();
  }
}

abstract class Added implements TodoEvent {
  factory Added(Todo todo) = _$Added;

  Todo get todo => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddedCopyWith<Added> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdatedCopyWith<$Res> {
  factory $UpdatedCopyWith(Updated value, $Res Function(Updated) then) =
      _$UpdatedCopyWithImpl<$Res>;
  $Res call({Todo todo});

  $TodoCopyWith<$Res> get todo;
}

/// @nodoc
class _$UpdatedCopyWithImpl<$Res> extends _$TodoEventCopyWithImpl<$Res>
    implements $UpdatedCopyWith<$Res> {
  _$UpdatedCopyWithImpl(Updated _value, $Res Function(Updated) _then)
      : super(_value, (v) => _then(v as Updated));

  @override
  Updated get _value => super._value as Updated;

  @override
  $Res call({
    Object? todo = freezed,
  }) {
    return _then(Updated(
      todo == freezed
          ? _value.todo
          : todo // ignore: cast_nullable_to_non_nullable
              as Todo,
    ));
  }

  @override
  $TodoCopyWith<$Res> get todo {
    return $TodoCopyWith<$Res>(_value.todo, (value) {
      return _then(_value.copyWith(todo: value));
    });
  }
}

/// @nodoc

class _$Updated implements Updated {
  _$Updated(this.todo);

  @override
  final Todo todo;

  @override
  String toString() {
    return 'TodoEvent.updated(todo: $todo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Updated &&
            (identical(other.todo, todo) ||
                const DeepCollectionEquality().equals(other.todo, todo)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(todo);

  @JsonKey(ignore: true)
  @override
  $UpdatedCopyWith<Updated> get copyWith =>
      _$UpdatedCopyWithImpl<Updated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadedSuccess,
    required TResult Function(Todo todo) added,
    required TResult Function(Todo todo) updated,
    required TResult Function(Todo todo) deleted,
    required TResult Function() clearCompleted,
    required TResult Function() toggleAll,
  }) {
    return updated(todo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadedSuccess,
    TResult Function(Todo todo)? added,
    TResult Function(Todo todo)? updated,
    TResult Function(Todo todo)? deleted,
    TResult Function()? clearCompleted,
    TResult Function()? toggleAll,
  }) {
    return updated?.call(todo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadedSuccess,
    TResult Function(Todo todo)? added,
    TResult Function(Todo todo)? updated,
    TResult Function(Todo todo)? deleted,
    TResult Function()? clearCompleted,
    TResult Function()? toggleAll,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated(todo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadedSuccess value) loadedSuccess,
    required TResult Function(Added value) added,
    required TResult Function(Updated value) updated,
    required TResult Function(Deleted value) deleted,
    required TResult Function(ClearCompleted value) clearCompleted,
    required TResult Function(ToggleAll value) toggleAll,
  }) {
    return updated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadedSuccess value)? loadedSuccess,
    TResult Function(Added value)? added,
    TResult Function(Updated value)? updated,
    TResult Function(Deleted value)? deleted,
    TResult Function(ClearCompleted value)? clearCompleted,
    TResult Function(ToggleAll value)? toggleAll,
  }) {
    return updated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadedSuccess value)? loadedSuccess,
    TResult Function(Added value)? added,
    TResult Function(Updated value)? updated,
    TResult Function(Deleted value)? deleted,
    TResult Function(ClearCompleted value)? clearCompleted,
    TResult Function(ToggleAll value)? toggleAll,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated(this);
    }
    return orElse();
  }
}

abstract class Updated implements TodoEvent {
  factory Updated(Todo todo) = _$Updated;

  Todo get todo => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdatedCopyWith<Updated> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeletedCopyWith<$Res> {
  factory $DeletedCopyWith(Deleted value, $Res Function(Deleted) then) =
      _$DeletedCopyWithImpl<$Res>;
  $Res call({Todo todo});

  $TodoCopyWith<$Res> get todo;
}

/// @nodoc
class _$DeletedCopyWithImpl<$Res> extends _$TodoEventCopyWithImpl<$Res>
    implements $DeletedCopyWith<$Res> {
  _$DeletedCopyWithImpl(Deleted _value, $Res Function(Deleted) _then)
      : super(_value, (v) => _then(v as Deleted));

  @override
  Deleted get _value => super._value as Deleted;

  @override
  $Res call({
    Object? todo = freezed,
  }) {
    return _then(Deleted(
      todo == freezed
          ? _value.todo
          : todo // ignore: cast_nullable_to_non_nullable
              as Todo,
    ));
  }

  @override
  $TodoCopyWith<$Res> get todo {
    return $TodoCopyWith<$Res>(_value.todo, (value) {
      return _then(_value.copyWith(todo: value));
    });
  }
}

/// @nodoc

class _$Deleted implements Deleted {
  _$Deleted(this.todo);

  @override
  final Todo todo;

  @override
  String toString() {
    return 'TodoEvent.deleted(todo: $todo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Deleted &&
            (identical(other.todo, todo) ||
                const DeepCollectionEquality().equals(other.todo, todo)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(todo);

  @JsonKey(ignore: true)
  @override
  $DeletedCopyWith<Deleted> get copyWith =>
      _$DeletedCopyWithImpl<Deleted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadedSuccess,
    required TResult Function(Todo todo) added,
    required TResult Function(Todo todo) updated,
    required TResult Function(Todo todo) deleted,
    required TResult Function() clearCompleted,
    required TResult Function() toggleAll,
  }) {
    return deleted(todo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadedSuccess,
    TResult Function(Todo todo)? added,
    TResult Function(Todo todo)? updated,
    TResult Function(Todo todo)? deleted,
    TResult Function()? clearCompleted,
    TResult Function()? toggleAll,
  }) {
    return deleted?.call(todo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadedSuccess,
    TResult Function(Todo todo)? added,
    TResult Function(Todo todo)? updated,
    TResult Function(Todo todo)? deleted,
    TResult Function()? clearCompleted,
    TResult Function()? toggleAll,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(todo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadedSuccess value) loadedSuccess,
    required TResult Function(Added value) added,
    required TResult Function(Updated value) updated,
    required TResult Function(Deleted value) deleted,
    required TResult Function(ClearCompleted value) clearCompleted,
    required TResult Function(ToggleAll value) toggleAll,
  }) {
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadedSuccess value)? loadedSuccess,
    TResult Function(Added value)? added,
    TResult Function(Updated value)? updated,
    TResult Function(Deleted value)? deleted,
    TResult Function(ClearCompleted value)? clearCompleted,
    TResult Function(ToggleAll value)? toggleAll,
  }) {
    return deleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadedSuccess value)? loadedSuccess,
    TResult Function(Added value)? added,
    TResult Function(Updated value)? updated,
    TResult Function(Deleted value)? deleted,
    TResult Function(ClearCompleted value)? clearCompleted,
    TResult Function(ToggleAll value)? toggleAll,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class Deleted implements TodoEvent {
  factory Deleted(Todo todo) = _$Deleted;

  Todo get todo => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeletedCopyWith<Deleted> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClearCompletedCopyWith<$Res> {
  factory $ClearCompletedCopyWith(
          ClearCompleted value, $Res Function(ClearCompleted) then) =
      _$ClearCompletedCopyWithImpl<$Res>;
}

/// @nodoc
class _$ClearCompletedCopyWithImpl<$Res> extends _$TodoEventCopyWithImpl<$Res>
    implements $ClearCompletedCopyWith<$Res> {
  _$ClearCompletedCopyWithImpl(
      ClearCompleted _value, $Res Function(ClearCompleted) _then)
      : super(_value, (v) => _then(v as ClearCompleted));

  @override
  ClearCompleted get _value => super._value as ClearCompleted;
}

/// @nodoc

class _$ClearCompleted implements ClearCompleted {
  _$ClearCompleted();

  @override
  String toString() {
    return 'TodoEvent.clearCompleted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ClearCompleted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadedSuccess,
    required TResult Function(Todo todo) added,
    required TResult Function(Todo todo) updated,
    required TResult Function(Todo todo) deleted,
    required TResult Function() clearCompleted,
    required TResult Function() toggleAll,
  }) {
    return clearCompleted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadedSuccess,
    TResult Function(Todo todo)? added,
    TResult Function(Todo todo)? updated,
    TResult Function(Todo todo)? deleted,
    TResult Function()? clearCompleted,
    TResult Function()? toggleAll,
  }) {
    return clearCompleted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadedSuccess,
    TResult Function(Todo todo)? added,
    TResult Function(Todo todo)? updated,
    TResult Function(Todo todo)? deleted,
    TResult Function()? clearCompleted,
    TResult Function()? toggleAll,
    required TResult orElse(),
  }) {
    if (clearCompleted != null) {
      return clearCompleted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadedSuccess value) loadedSuccess,
    required TResult Function(Added value) added,
    required TResult Function(Updated value) updated,
    required TResult Function(Deleted value) deleted,
    required TResult Function(ClearCompleted value) clearCompleted,
    required TResult Function(ToggleAll value) toggleAll,
  }) {
    return clearCompleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadedSuccess value)? loadedSuccess,
    TResult Function(Added value)? added,
    TResult Function(Updated value)? updated,
    TResult Function(Deleted value)? deleted,
    TResult Function(ClearCompleted value)? clearCompleted,
    TResult Function(ToggleAll value)? toggleAll,
  }) {
    return clearCompleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadedSuccess value)? loadedSuccess,
    TResult Function(Added value)? added,
    TResult Function(Updated value)? updated,
    TResult Function(Deleted value)? deleted,
    TResult Function(ClearCompleted value)? clearCompleted,
    TResult Function(ToggleAll value)? toggleAll,
    required TResult orElse(),
  }) {
    if (clearCompleted != null) {
      return clearCompleted(this);
    }
    return orElse();
  }
}

abstract class ClearCompleted implements TodoEvent {
  factory ClearCompleted() = _$ClearCompleted;
}

/// @nodoc
abstract class $ToggleAllCopyWith<$Res> {
  factory $ToggleAllCopyWith(ToggleAll value, $Res Function(ToggleAll) then) =
      _$ToggleAllCopyWithImpl<$Res>;
}

/// @nodoc
class _$ToggleAllCopyWithImpl<$Res> extends _$TodoEventCopyWithImpl<$Res>
    implements $ToggleAllCopyWith<$Res> {
  _$ToggleAllCopyWithImpl(ToggleAll _value, $Res Function(ToggleAll) _then)
      : super(_value, (v) => _then(v as ToggleAll));

  @override
  ToggleAll get _value => super._value as ToggleAll;
}

/// @nodoc

class _$ToggleAll implements ToggleAll {
  _$ToggleAll();

  @override
  String toString() {
    return 'TodoEvent.toggleAll()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ToggleAll);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadedSuccess,
    required TResult Function(Todo todo) added,
    required TResult Function(Todo todo) updated,
    required TResult Function(Todo todo) deleted,
    required TResult Function() clearCompleted,
    required TResult Function() toggleAll,
  }) {
    return toggleAll();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadedSuccess,
    TResult Function(Todo todo)? added,
    TResult Function(Todo todo)? updated,
    TResult Function(Todo todo)? deleted,
    TResult Function()? clearCompleted,
    TResult Function()? toggleAll,
  }) {
    return toggleAll?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadedSuccess,
    TResult Function(Todo todo)? added,
    TResult Function(Todo todo)? updated,
    TResult Function(Todo todo)? deleted,
    TResult Function()? clearCompleted,
    TResult Function()? toggleAll,
    required TResult orElse(),
  }) {
    if (toggleAll != null) {
      return toggleAll();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadedSuccess value) loadedSuccess,
    required TResult Function(Added value) added,
    required TResult Function(Updated value) updated,
    required TResult Function(Deleted value) deleted,
    required TResult Function(ClearCompleted value) clearCompleted,
    required TResult Function(ToggleAll value) toggleAll,
  }) {
    return toggleAll(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadedSuccess value)? loadedSuccess,
    TResult Function(Added value)? added,
    TResult Function(Updated value)? updated,
    TResult Function(Deleted value)? deleted,
    TResult Function(ClearCompleted value)? clearCompleted,
    TResult Function(ToggleAll value)? toggleAll,
  }) {
    return toggleAll?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadedSuccess value)? loadedSuccess,
    TResult Function(Added value)? added,
    TResult Function(Updated value)? updated,
    TResult Function(Deleted value)? deleted,
    TResult Function(ClearCompleted value)? clearCompleted,
    TResult Function(ToggleAll value)? toggleAll,
    required TResult orElse(),
  }) {
    if (toggleAll != null) {
      return toggleAll(this);
    }
    return orElse();
  }
}

abstract class ToggleAll implements TodoEvent {
  factory ToggleAll() = _$ToggleAll;
}
