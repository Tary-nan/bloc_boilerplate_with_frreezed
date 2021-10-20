// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'stat_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$StatStateTearOff {
  const _$StatStateTearOff();

  StatStateLoading loading() {
    return StatStateLoading();
  }

  StatStateLoadedSuccess loadedSuccess(
      {required int numActive, required int numComplet}) {
    return StatStateLoadedSuccess(
      numActive: numActive,
      numComplet: numComplet,
    );
  }
}

/// @nodoc
const $StatState = _$StatStateTearOff();

/// @nodoc
mixin _$StatState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(int numActive, int numComplet) loadedSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(int numActive, int numComplet)? loadedSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(int numActive, int numComplet)? loadedSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StatStateLoading value) loading,
    required TResult Function(StatStateLoadedSuccess value) loadedSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StatStateLoading value)? loading,
    TResult Function(StatStateLoadedSuccess value)? loadedSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StatStateLoading value)? loading,
    TResult Function(StatStateLoadedSuccess value)? loadedSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatStateCopyWith<$Res> {
  factory $StatStateCopyWith(StatState value, $Res Function(StatState) then) =
      _$StatStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$StatStateCopyWithImpl<$Res> implements $StatStateCopyWith<$Res> {
  _$StatStateCopyWithImpl(this._value, this._then);

  final StatState _value;
  // ignore: unused_field
  final $Res Function(StatState) _then;
}

/// @nodoc
abstract class $StatStateLoadingCopyWith<$Res> {
  factory $StatStateLoadingCopyWith(
          StatStateLoading value, $Res Function(StatStateLoading) then) =
      _$StatStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$StatStateLoadingCopyWithImpl<$Res> extends _$StatStateCopyWithImpl<$Res>
    implements $StatStateLoadingCopyWith<$Res> {
  _$StatStateLoadingCopyWithImpl(
      StatStateLoading _value, $Res Function(StatStateLoading) _then)
      : super(_value, (v) => _then(v as StatStateLoading));

  @override
  StatStateLoading get _value => super._value as StatStateLoading;
}

/// @nodoc

class _$StatStateLoading implements StatStateLoading {
  _$StatStateLoading();

  @override
  String toString() {
    return 'StatState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is StatStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(int numActive, int numComplet) loadedSuccess,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(int numActive, int numComplet)? loadedSuccess,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(int numActive, int numComplet)? loadedSuccess,
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
    required TResult Function(StatStateLoading value) loading,
    required TResult Function(StatStateLoadedSuccess value) loadedSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StatStateLoading value)? loading,
    TResult Function(StatStateLoadedSuccess value)? loadedSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StatStateLoading value)? loading,
    TResult Function(StatStateLoadedSuccess value)? loadedSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class StatStateLoading implements StatState {
  factory StatStateLoading() = _$StatStateLoading;
}

/// @nodoc
abstract class $StatStateLoadedSuccessCopyWith<$Res> {
  factory $StatStateLoadedSuccessCopyWith(StatStateLoadedSuccess value,
          $Res Function(StatStateLoadedSuccess) then) =
      _$StatStateLoadedSuccessCopyWithImpl<$Res>;
  $Res call({int numActive, int numComplet});
}

/// @nodoc
class _$StatStateLoadedSuccessCopyWithImpl<$Res>
    extends _$StatStateCopyWithImpl<$Res>
    implements $StatStateLoadedSuccessCopyWith<$Res> {
  _$StatStateLoadedSuccessCopyWithImpl(StatStateLoadedSuccess _value,
      $Res Function(StatStateLoadedSuccess) _then)
      : super(_value, (v) => _then(v as StatStateLoadedSuccess));

  @override
  StatStateLoadedSuccess get _value => super._value as StatStateLoadedSuccess;

  @override
  $Res call({
    Object? numActive = freezed,
    Object? numComplet = freezed,
  }) {
    return _then(StatStateLoadedSuccess(
      numActive: numActive == freezed
          ? _value.numActive
          : numActive // ignore: cast_nullable_to_non_nullable
              as int,
      numComplet: numComplet == freezed
          ? _value.numComplet
          : numComplet // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$StatStateLoadedSuccess implements StatStateLoadedSuccess {
  _$StatStateLoadedSuccess({required this.numActive, required this.numComplet});

  @override
  final int numActive;
  @override
  final int numComplet;

  @override
  String toString() {
    return 'StatState.loadedSuccess(numActive: $numActive, numComplet: $numComplet)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is StatStateLoadedSuccess &&
            (identical(other.numActive, numActive) ||
                const DeepCollectionEquality()
                    .equals(other.numActive, numActive)) &&
            (identical(other.numComplet, numComplet) ||
                const DeepCollectionEquality()
                    .equals(other.numComplet, numComplet)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(numActive) ^
      const DeepCollectionEquality().hash(numComplet);

  @JsonKey(ignore: true)
  @override
  $StatStateLoadedSuccessCopyWith<StatStateLoadedSuccess> get copyWith =>
      _$StatStateLoadedSuccessCopyWithImpl<StatStateLoadedSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(int numActive, int numComplet) loadedSuccess,
  }) {
    return loadedSuccess(numActive, numComplet);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(int numActive, int numComplet)? loadedSuccess,
  }) {
    return loadedSuccess?.call(numActive, numComplet);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(int numActive, int numComplet)? loadedSuccess,
    required TResult orElse(),
  }) {
    if (loadedSuccess != null) {
      return loadedSuccess(numActive, numComplet);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StatStateLoading value) loading,
    required TResult Function(StatStateLoadedSuccess value) loadedSuccess,
  }) {
    return loadedSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StatStateLoading value)? loading,
    TResult Function(StatStateLoadedSuccess value)? loadedSuccess,
  }) {
    return loadedSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StatStateLoading value)? loading,
    TResult Function(StatStateLoadedSuccess value)? loadedSuccess,
    required TResult orElse(),
  }) {
    if (loadedSuccess != null) {
      return loadedSuccess(this);
    }
    return orElse();
  }
}

abstract class StatStateLoadedSuccess implements StatState {
  factory StatStateLoadedSuccess(
      {required int numActive,
      required int numComplet}) = _$StatStateLoadedSuccess;

  int get numActive => throw _privateConstructorUsedError;
  int get numComplet => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatStateLoadedSuccessCopyWith<StatStateLoadedSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}
