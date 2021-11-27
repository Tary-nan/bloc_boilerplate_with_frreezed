// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'register.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RegisterFormzTearOff {
  const _$RegisterFormzTearOff();

  _RegisterFormz call(
      {required FirstName firstName,
      required Phone phone,
      required Email email}) {
    return _RegisterFormz(
      firstName: firstName,
      phone: phone,
      email: email,
    );
  }
}

/// @nodoc
const $RegisterFormz = _$RegisterFormzTearOff();

/// @nodoc
mixin _$RegisterFormz {
  FirstName get firstName => throw _privateConstructorUsedError;
  Phone get phone => throw _privateConstructorUsedError;
  Email get email => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterFormzCopyWith<RegisterFormz> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterFormzCopyWith<$Res> {
  factory $RegisterFormzCopyWith(
          RegisterFormz value, $Res Function(RegisterFormz) then) =
      _$RegisterFormzCopyWithImpl<$Res>;
  $Res call({FirstName firstName, Phone phone, Email email});
}

/// @nodoc
class _$RegisterFormzCopyWithImpl<$Res>
    implements $RegisterFormzCopyWith<$Res> {
  _$RegisterFormzCopyWithImpl(this._value, this._then);

  final RegisterFormz _value;
  // ignore: unused_field
  final $Res Function(RegisterFormz) _then;

  @override
  $Res call({
    Object? firstName = freezed,
    Object? phone = freezed,
    Object? email = freezed,
  }) {
    return _then(_value.copyWith(
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as FirstName,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as Phone,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
    ));
  }
}

/// @nodoc
abstract class _$RegisterFormzCopyWith<$Res>
    implements $RegisterFormzCopyWith<$Res> {
  factory _$RegisterFormzCopyWith(
          _RegisterFormz value, $Res Function(_RegisterFormz) then) =
      __$RegisterFormzCopyWithImpl<$Res>;
  @override
  $Res call({FirstName firstName, Phone phone, Email email});
}

/// @nodoc
class __$RegisterFormzCopyWithImpl<$Res>
    extends _$RegisterFormzCopyWithImpl<$Res>
    implements _$RegisterFormzCopyWith<$Res> {
  __$RegisterFormzCopyWithImpl(
      _RegisterFormz _value, $Res Function(_RegisterFormz) _then)
      : super(_value, (v) => _then(v as _RegisterFormz));

  @override
  _RegisterFormz get _value => super._value as _RegisterFormz;

  @override
  $Res call({
    Object? firstName = freezed,
    Object? phone = freezed,
    Object? email = freezed,
  }) {
    return _then(_RegisterFormz(
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as FirstName,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as Phone,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
    ));
  }
}

/// @nodoc

class _$_RegisterFormz extends _RegisterFormz {
  _$_RegisterFormz(
      {required this.firstName, required this.phone, required this.email})
      : super._();

  @override
  final FirstName firstName;
  @override
  final Phone phone;
  @override
  final Email email;

  @override
  String toString() {
    return 'RegisterFormz(firstName: $firstName, phone: $phone, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RegisterFormz &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(email);

  @JsonKey(ignore: true)
  @override
  _$RegisterFormzCopyWith<_RegisterFormz> get copyWith =>
      __$RegisterFormzCopyWithImpl<_RegisterFormz>(this, _$identity);
}

abstract class _RegisterFormz extends RegisterFormz {
  factory _RegisterFormz(
      {required FirstName firstName,
      required Phone phone,
      required Email email}) = _$_RegisterFormz;
  _RegisterFormz._() : super._();

  @override
  FirstName get firstName => throw _privateConstructorUsedError;
  @override
  Phone get phone => throw _privateConstructorUsedError;
  @override
  Email get email => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RegisterFormzCopyWith<_RegisterFormz> get copyWith =>
      throw _privateConstructorUsedError;
}
