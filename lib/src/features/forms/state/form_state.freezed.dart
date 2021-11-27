// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'form_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FormzStateTearOff {
  const _$FormzStateTearOff();

  _FormzState call({required RegisterFormz form, required FormzStatus status}) {
    return _FormzState(
      form: form,
      status: status,
    );
  }
}

/// @nodoc
const $FormzState = _$FormzStateTearOff();

/// @nodoc
mixin _$FormzState {
  RegisterFormz get form => throw _privateConstructorUsedError;
  FormzStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FormzStateCopyWith<FormzState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormzStateCopyWith<$Res> {
  factory $FormzStateCopyWith(
          FormzState value, $Res Function(FormzState) then) =
      _$FormzStateCopyWithImpl<$Res>;
  $Res call({RegisterFormz form, FormzStatus status});

  $RegisterFormzCopyWith<$Res> get form;
}

/// @nodoc
class _$FormzStateCopyWithImpl<$Res> implements $FormzStateCopyWith<$Res> {
  _$FormzStateCopyWithImpl(this._value, this._then);

  final FormzState _value;
  // ignore: unused_field
  final $Res Function(FormzState) _then;

  @override
  $Res call({
    Object? form = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      form: form == freezed
          ? _value.form
          : form // ignore: cast_nullable_to_non_nullable
              as RegisterFormz,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
    ));
  }

  @override
  $RegisterFormzCopyWith<$Res> get form {
    return $RegisterFormzCopyWith<$Res>(_value.form, (value) {
      return _then(_value.copyWith(form: value));
    });
  }
}

/// @nodoc
abstract class _$FormzStateCopyWith<$Res> implements $FormzStateCopyWith<$Res> {
  factory _$FormzStateCopyWith(
          _FormzState value, $Res Function(_FormzState) then) =
      __$FormzStateCopyWithImpl<$Res>;
  @override
  $Res call({RegisterFormz form, FormzStatus status});

  @override
  $RegisterFormzCopyWith<$Res> get form;
}

/// @nodoc
class __$FormzStateCopyWithImpl<$Res> extends _$FormzStateCopyWithImpl<$Res>
    implements _$FormzStateCopyWith<$Res> {
  __$FormzStateCopyWithImpl(
      _FormzState _value, $Res Function(_FormzState) _then)
      : super(_value, (v) => _then(v as _FormzState));

  @override
  _FormzState get _value => super._value as _FormzState;

  @override
  $Res call({
    Object? form = freezed,
    Object? status = freezed,
  }) {
    return _then(_FormzState(
      form: form == freezed
          ? _value.form
          : form // ignore: cast_nullable_to_non_nullable
              as RegisterFormz,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
    ));
  }
}

/// @nodoc

class _$_FormzState implements _FormzState {
  _$_FormzState({required this.form, required this.status});

  @override
  final RegisterFormz form;
  @override
  final FormzStatus status;

  @override
  String toString() {
    return 'FormzState(form: $form, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FormzState &&
            (identical(other.form, form) ||
                const DeepCollectionEquality().equals(other.form, form)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(form) ^
      const DeepCollectionEquality().hash(status);

  @JsonKey(ignore: true)
  @override
  _$FormzStateCopyWith<_FormzState> get copyWith =>
      __$FormzStateCopyWithImpl<_FormzState>(this, _$identity);
}

abstract class _FormzState implements FormzState {
  factory _FormzState(
      {required RegisterFormz form,
      required FormzStatus status}) = _$_FormzState;

  @override
  RegisterFormz get form => throw _privateConstructorUsedError;
  @override
  FormzStatus get status => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FormzStateCopyWith<_FormzState> get copyWith =>
      throw _privateConstructorUsedError;
}
