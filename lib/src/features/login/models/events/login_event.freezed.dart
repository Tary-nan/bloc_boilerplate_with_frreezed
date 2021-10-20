// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LoginEventTearOff {
  const _$LoginEventTearOff();

  _LoginpasswordChange loginPasswordChange(String password) {
    return _LoginpasswordChange(
      password,
    );
  }

  _LoginUsernameChange loginUsernameChange(String username) {
    return _LoginUsernameChange(
      username,
    );
  }

  _LoginSubmitted loginSubmitted() {
    return _LoginSubmitted();
  }
}

/// @nodoc
const $LoginEvent = _$LoginEventTearOff();

/// @nodoc
mixin _$LoginEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String password) loginPasswordChange,
    required TResult Function(String username) loginUsernameChange,
    required TResult Function() loginSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String password)? loginPasswordChange,
    TResult Function(String username)? loginUsernameChange,
    TResult Function()? loginSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String password)? loginPasswordChange,
    TResult Function(String username)? loginUsernameChange,
    TResult Function()? loginSubmitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginpasswordChange value) loginPasswordChange,
    required TResult Function(_LoginUsernameChange value) loginUsernameChange,
    required TResult Function(_LoginSubmitted value) loginSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoginpasswordChange value)? loginPasswordChange,
    TResult Function(_LoginUsernameChange value)? loginUsernameChange,
    TResult Function(_LoginSubmitted value)? loginSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginpasswordChange value)? loginPasswordChange,
    TResult Function(_LoginUsernameChange value)? loginUsernameChange,
    TResult Function(_LoginSubmitted value)? loginSubmitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res> implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  final LoginEvent _value;
  // ignore: unused_field
  final $Res Function(LoginEvent) _then;
}

/// @nodoc
abstract class _$LoginpasswordChangeCopyWith<$Res> {
  factory _$LoginpasswordChangeCopyWith(_LoginpasswordChange value,
          $Res Function(_LoginpasswordChange) then) =
      __$LoginpasswordChangeCopyWithImpl<$Res>;
  $Res call({String password});
}

/// @nodoc
class __$LoginpasswordChangeCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res>
    implements _$LoginpasswordChangeCopyWith<$Res> {
  __$LoginpasswordChangeCopyWithImpl(
      _LoginpasswordChange _value, $Res Function(_LoginpasswordChange) _then)
      : super(_value, (v) => _then(v as _LoginpasswordChange));

  @override
  _LoginpasswordChange get _value => super._value as _LoginpasswordChange;

  @override
  $Res call({
    Object? password = freezed,
  }) {
    return _then(_LoginpasswordChange(
      password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LoginpasswordChange implements _LoginpasswordChange {
  _$_LoginpasswordChange(this.password);

  @override
  final String password;

  @override
  String toString() {
    return 'LoginEvent.loginPasswordChange(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoginpasswordChange &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(password);

  @JsonKey(ignore: true)
  @override
  _$LoginpasswordChangeCopyWith<_LoginpasswordChange> get copyWith =>
      __$LoginpasswordChangeCopyWithImpl<_LoginpasswordChange>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String password) loginPasswordChange,
    required TResult Function(String username) loginUsernameChange,
    required TResult Function() loginSubmitted,
  }) {
    return loginPasswordChange(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String password)? loginPasswordChange,
    TResult Function(String username)? loginUsernameChange,
    TResult Function()? loginSubmitted,
  }) {
    return loginPasswordChange?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String password)? loginPasswordChange,
    TResult Function(String username)? loginUsernameChange,
    TResult Function()? loginSubmitted,
    required TResult orElse(),
  }) {
    if (loginPasswordChange != null) {
      return loginPasswordChange(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginpasswordChange value) loginPasswordChange,
    required TResult Function(_LoginUsernameChange value) loginUsernameChange,
    required TResult Function(_LoginSubmitted value) loginSubmitted,
  }) {
    return loginPasswordChange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoginpasswordChange value)? loginPasswordChange,
    TResult Function(_LoginUsernameChange value)? loginUsernameChange,
    TResult Function(_LoginSubmitted value)? loginSubmitted,
  }) {
    return loginPasswordChange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginpasswordChange value)? loginPasswordChange,
    TResult Function(_LoginUsernameChange value)? loginUsernameChange,
    TResult Function(_LoginSubmitted value)? loginSubmitted,
    required TResult orElse(),
  }) {
    if (loginPasswordChange != null) {
      return loginPasswordChange(this);
    }
    return orElse();
  }
}

abstract class _LoginpasswordChange implements LoginEvent {
  factory _LoginpasswordChange(String password) = _$_LoginpasswordChange;

  String get password => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoginpasswordChangeCopyWith<_LoginpasswordChange> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoginUsernameChangeCopyWith<$Res> {
  factory _$LoginUsernameChangeCopyWith(_LoginUsernameChange value,
          $Res Function(_LoginUsernameChange) then) =
      __$LoginUsernameChangeCopyWithImpl<$Res>;
  $Res call({String username});
}

/// @nodoc
class __$LoginUsernameChangeCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res>
    implements _$LoginUsernameChangeCopyWith<$Res> {
  __$LoginUsernameChangeCopyWithImpl(
      _LoginUsernameChange _value, $Res Function(_LoginUsernameChange) _then)
      : super(_value, (v) => _then(v as _LoginUsernameChange));

  @override
  _LoginUsernameChange get _value => super._value as _LoginUsernameChange;

  @override
  $Res call({
    Object? username = freezed,
  }) {
    return _then(_LoginUsernameChange(
      username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LoginUsernameChange implements _LoginUsernameChange {
  _$_LoginUsernameChange(this.username);

  @override
  final String username;

  @override
  String toString() {
    return 'LoginEvent.loginUsernameChange(username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoginUsernameChange &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(username);

  @JsonKey(ignore: true)
  @override
  _$LoginUsernameChangeCopyWith<_LoginUsernameChange> get copyWith =>
      __$LoginUsernameChangeCopyWithImpl<_LoginUsernameChange>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String password) loginPasswordChange,
    required TResult Function(String username) loginUsernameChange,
    required TResult Function() loginSubmitted,
  }) {
    return loginUsernameChange(username);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String password)? loginPasswordChange,
    TResult Function(String username)? loginUsernameChange,
    TResult Function()? loginSubmitted,
  }) {
    return loginUsernameChange?.call(username);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String password)? loginPasswordChange,
    TResult Function(String username)? loginUsernameChange,
    TResult Function()? loginSubmitted,
    required TResult orElse(),
  }) {
    if (loginUsernameChange != null) {
      return loginUsernameChange(username);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginpasswordChange value) loginPasswordChange,
    required TResult Function(_LoginUsernameChange value) loginUsernameChange,
    required TResult Function(_LoginSubmitted value) loginSubmitted,
  }) {
    return loginUsernameChange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoginpasswordChange value)? loginPasswordChange,
    TResult Function(_LoginUsernameChange value)? loginUsernameChange,
    TResult Function(_LoginSubmitted value)? loginSubmitted,
  }) {
    return loginUsernameChange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginpasswordChange value)? loginPasswordChange,
    TResult Function(_LoginUsernameChange value)? loginUsernameChange,
    TResult Function(_LoginSubmitted value)? loginSubmitted,
    required TResult orElse(),
  }) {
    if (loginUsernameChange != null) {
      return loginUsernameChange(this);
    }
    return orElse();
  }
}

abstract class _LoginUsernameChange implements LoginEvent {
  factory _LoginUsernameChange(String username) = _$_LoginUsernameChange;

  String get username => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoginUsernameChangeCopyWith<_LoginUsernameChange> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoginSubmittedCopyWith<$Res> {
  factory _$LoginSubmittedCopyWith(
          _LoginSubmitted value, $Res Function(_LoginSubmitted) then) =
      __$LoginSubmittedCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoginSubmittedCopyWithImpl<$Res> extends _$LoginEventCopyWithImpl<$Res>
    implements _$LoginSubmittedCopyWith<$Res> {
  __$LoginSubmittedCopyWithImpl(
      _LoginSubmitted _value, $Res Function(_LoginSubmitted) _then)
      : super(_value, (v) => _then(v as _LoginSubmitted));

  @override
  _LoginSubmitted get _value => super._value as _LoginSubmitted;
}

/// @nodoc

class _$_LoginSubmitted implements _LoginSubmitted {
  _$_LoginSubmitted();

  @override
  String toString() {
    return 'LoginEvent.loginSubmitted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoginSubmitted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String password) loginPasswordChange,
    required TResult Function(String username) loginUsernameChange,
    required TResult Function() loginSubmitted,
  }) {
    return loginSubmitted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String password)? loginPasswordChange,
    TResult Function(String username)? loginUsernameChange,
    TResult Function()? loginSubmitted,
  }) {
    return loginSubmitted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String password)? loginPasswordChange,
    TResult Function(String username)? loginUsernameChange,
    TResult Function()? loginSubmitted,
    required TResult orElse(),
  }) {
    if (loginSubmitted != null) {
      return loginSubmitted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginpasswordChange value) loginPasswordChange,
    required TResult Function(_LoginUsernameChange value) loginUsernameChange,
    required TResult Function(_LoginSubmitted value) loginSubmitted,
  }) {
    return loginSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoginpasswordChange value)? loginPasswordChange,
    TResult Function(_LoginUsernameChange value)? loginUsernameChange,
    TResult Function(_LoginSubmitted value)? loginSubmitted,
  }) {
    return loginSubmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginpasswordChange value)? loginPasswordChange,
    TResult Function(_LoginUsernameChange value)? loginUsernameChange,
    TResult Function(_LoginSubmitted value)? loginSubmitted,
    required TResult orElse(),
  }) {
    if (loginSubmitted != null) {
      return loginSubmitted(this);
    }
    return orElse();
  }
}

abstract class _LoginSubmitted implements LoginEvent {
  factory _LoginSubmitted() = _$_LoginSubmitted;
}
