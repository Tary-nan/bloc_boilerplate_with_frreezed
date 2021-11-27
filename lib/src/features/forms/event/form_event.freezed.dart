// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'form_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FormEventTearOff {
  const _$FormEventTearOff();

  FormFirstNameChange formFirstNameChange(String fistName) {
    return FormFirstNameChange(
      fistName,
    );
  }

  FormEmailChange formEmailChange(String fistName) {
    return FormEmailChange(
      fistName,
    );
  }

  FormPhoneChange formPhoneChange(String fistName) {
    return FormPhoneChange(
      fistName,
    );
  }
}

/// @nodoc
const $FormEvent = _$FormEventTearOff();

/// @nodoc
mixin _$FormEvent {
  String get fistName => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String fistName) formFirstNameChange,
    required TResult Function(String fistName) formEmailChange,
    required TResult Function(String fistName) formPhoneChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String fistName)? formFirstNameChange,
    TResult Function(String fistName)? formEmailChange,
    TResult Function(String fistName)? formPhoneChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String fistName)? formFirstNameChange,
    TResult Function(String fistName)? formEmailChange,
    TResult Function(String fistName)? formPhoneChange,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FormFirstNameChange value) formFirstNameChange,
    required TResult Function(FormEmailChange value) formEmailChange,
    required TResult Function(FormPhoneChange value) formPhoneChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FormFirstNameChange value)? formFirstNameChange,
    TResult Function(FormEmailChange value)? formEmailChange,
    TResult Function(FormPhoneChange value)? formPhoneChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FormFirstNameChange value)? formFirstNameChange,
    TResult Function(FormEmailChange value)? formEmailChange,
    TResult Function(FormPhoneChange value)? formPhoneChange,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FormEventCopyWith<FormEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormEventCopyWith<$Res> {
  factory $FormEventCopyWith(FormEvent value, $Res Function(FormEvent) then) =
      _$FormEventCopyWithImpl<$Res>;
  $Res call({String fistName});
}

/// @nodoc
class _$FormEventCopyWithImpl<$Res> implements $FormEventCopyWith<$Res> {
  _$FormEventCopyWithImpl(this._value, this._then);

  final FormEvent _value;
  // ignore: unused_field
  final $Res Function(FormEvent) _then;

  @override
  $Res call({
    Object? fistName = freezed,
  }) {
    return _then(_value.copyWith(
      fistName: fistName == freezed
          ? _value.fistName
          : fistName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $FormFirstNameChangeCopyWith<$Res>
    implements $FormEventCopyWith<$Res> {
  factory $FormFirstNameChangeCopyWith(
          FormFirstNameChange value, $Res Function(FormFirstNameChange) then) =
      _$FormFirstNameChangeCopyWithImpl<$Res>;
  @override
  $Res call({String fistName});
}

/// @nodoc
class _$FormFirstNameChangeCopyWithImpl<$Res>
    extends _$FormEventCopyWithImpl<$Res>
    implements $FormFirstNameChangeCopyWith<$Res> {
  _$FormFirstNameChangeCopyWithImpl(
      FormFirstNameChange _value, $Res Function(FormFirstNameChange) _then)
      : super(_value, (v) => _then(v as FormFirstNameChange));

  @override
  FormFirstNameChange get _value => super._value as FormFirstNameChange;

  @override
  $Res call({
    Object? fistName = freezed,
  }) {
    return _then(FormFirstNameChange(
      fistName == freezed
          ? _value.fistName
          : fistName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FormFirstNameChange implements FormFirstNameChange {
  _$FormFirstNameChange(this.fistName);

  @override
  final String fistName;

  @override
  String toString() {
    return 'FormEvent.formFirstNameChange(fistName: $fistName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FormFirstNameChange &&
            (identical(other.fistName, fistName) ||
                const DeepCollectionEquality()
                    .equals(other.fistName, fistName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(fistName);

  @JsonKey(ignore: true)
  @override
  $FormFirstNameChangeCopyWith<FormFirstNameChange> get copyWith =>
      _$FormFirstNameChangeCopyWithImpl<FormFirstNameChange>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String fistName) formFirstNameChange,
    required TResult Function(String fistName) formEmailChange,
    required TResult Function(String fistName) formPhoneChange,
  }) {
    return formFirstNameChange(fistName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String fistName)? formFirstNameChange,
    TResult Function(String fistName)? formEmailChange,
    TResult Function(String fistName)? formPhoneChange,
  }) {
    return formFirstNameChange?.call(fistName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String fistName)? formFirstNameChange,
    TResult Function(String fistName)? formEmailChange,
    TResult Function(String fistName)? formPhoneChange,
    required TResult orElse(),
  }) {
    if (formFirstNameChange != null) {
      return formFirstNameChange(fistName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FormFirstNameChange value) formFirstNameChange,
    required TResult Function(FormEmailChange value) formEmailChange,
    required TResult Function(FormPhoneChange value) formPhoneChange,
  }) {
    return formFirstNameChange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FormFirstNameChange value)? formFirstNameChange,
    TResult Function(FormEmailChange value)? formEmailChange,
    TResult Function(FormPhoneChange value)? formPhoneChange,
  }) {
    return formFirstNameChange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FormFirstNameChange value)? formFirstNameChange,
    TResult Function(FormEmailChange value)? formEmailChange,
    TResult Function(FormPhoneChange value)? formPhoneChange,
    required TResult orElse(),
  }) {
    if (formFirstNameChange != null) {
      return formFirstNameChange(this);
    }
    return orElse();
  }
}

abstract class FormFirstNameChange implements FormEvent {
  factory FormFirstNameChange(String fistName) = _$FormFirstNameChange;

  @override
  String get fistName => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $FormFirstNameChangeCopyWith<FormFirstNameChange> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormEmailChangeCopyWith<$Res>
    implements $FormEventCopyWith<$Res> {
  factory $FormEmailChangeCopyWith(
          FormEmailChange value, $Res Function(FormEmailChange) then) =
      _$FormEmailChangeCopyWithImpl<$Res>;
  @override
  $Res call({String fistName});
}

/// @nodoc
class _$FormEmailChangeCopyWithImpl<$Res> extends _$FormEventCopyWithImpl<$Res>
    implements $FormEmailChangeCopyWith<$Res> {
  _$FormEmailChangeCopyWithImpl(
      FormEmailChange _value, $Res Function(FormEmailChange) _then)
      : super(_value, (v) => _then(v as FormEmailChange));

  @override
  FormEmailChange get _value => super._value as FormEmailChange;

  @override
  $Res call({
    Object? fistName = freezed,
  }) {
    return _then(FormEmailChange(
      fistName == freezed
          ? _value.fistName
          : fistName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FormEmailChange implements FormEmailChange {
  _$FormEmailChange(this.fistName);

  @override
  final String fistName;

  @override
  String toString() {
    return 'FormEvent.formEmailChange(fistName: $fistName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FormEmailChange &&
            (identical(other.fistName, fistName) ||
                const DeepCollectionEquality()
                    .equals(other.fistName, fistName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(fistName);

  @JsonKey(ignore: true)
  @override
  $FormEmailChangeCopyWith<FormEmailChange> get copyWith =>
      _$FormEmailChangeCopyWithImpl<FormEmailChange>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String fistName) formFirstNameChange,
    required TResult Function(String fistName) formEmailChange,
    required TResult Function(String fistName) formPhoneChange,
  }) {
    return formEmailChange(fistName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String fistName)? formFirstNameChange,
    TResult Function(String fistName)? formEmailChange,
    TResult Function(String fistName)? formPhoneChange,
  }) {
    return formEmailChange?.call(fistName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String fistName)? formFirstNameChange,
    TResult Function(String fistName)? formEmailChange,
    TResult Function(String fistName)? formPhoneChange,
    required TResult orElse(),
  }) {
    if (formEmailChange != null) {
      return formEmailChange(fistName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FormFirstNameChange value) formFirstNameChange,
    required TResult Function(FormEmailChange value) formEmailChange,
    required TResult Function(FormPhoneChange value) formPhoneChange,
  }) {
    return formEmailChange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FormFirstNameChange value)? formFirstNameChange,
    TResult Function(FormEmailChange value)? formEmailChange,
    TResult Function(FormPhoneChange value)? formPhoneChange,
  }) {
    return formEmailChange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FormFirstNameChange value)? formFirstNameChange,
    TResult Function(FormEmailChange value)? formEmailChange,
    TResult Function(FormPhoneChange value)? formPhoneChange,
    required TResult orElse(),
  }) {
    if (formEmailChange != null) {
      return formEmailChange(this);
    }
    return orElse();
  }
}

abstract class FormEmailChange implements FormEvent {
  factory FormEmailChange(String fistName) = _$FormEmailChange;

  @override
  String get fistName => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $FormEmailChangeCopyWith<FormEmailChange> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormPhoneChangeCopyWith<$Res>
    implements $FormEventCopyWith<$Res> {
  factory $FormPhoneChangeCopyWith(
          FormPhoneChange value, $Res Function(FormPhoneChange) then) =
      _$FormPhoneChangeCopyWithImpl<$Res>;
  @override
  $Res call({String fistName});
}

/// @nodoc
class _$FormPhoneChangeCopyWithImpl<$Res> extends _$FormEventCopyWithImpl<$Res>
    implements $FormPhoneChangeCopyWith<$Res> {
  _$FormPhoneChangeCopyWithImpl(
      FormPhoneChange _value, $Res Function(FormPhoneChange) _then)
      : super(_value, (v) => _then(v as FormPhoneChange));

  @override
  FormPhoneChange get _value => super._value as FormPhoneChange;

  @override
  $Res call({
    Object? fistName = freezed,
  }) {
    return _then(FormPhoneChange(
      fistName == freezed
          ? _value.fistName
          : fistName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FormPhoneChange implements FormPhoneChange {
  _$FormPhoneChange(this.fistName);

  @override
  final String fistName;

  @override
  String toString() {
    return 'FormEvent.formPhoneChange(fistName: $fistName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FormPhoneChange &&
            (identical(other.fistName, fistName) ||
                const DeepCollectionEquality()
                    .equals(other.fistName, fistName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(fistName);

  @JsonKey(ignore: true)
  @override
  $FormPhoneChangeCopyWith<FormPhoneChange> get copyWith =>
      _$FormPhoneChangeCopyWithImpl<FormPhoneChange>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String fistName) formFirstNameChange,
    required TResult Function(String fistName) formEmailChange,
    required TResult Function(String fistName) formPhoneChange,
  }) {
    return formPhoneChange(fistName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String fistName)? formFirstNameChange,
    TResult Function(String fistName)? formEmailChange,
    TResult Function(String fistName)? formPhoneChange,
  }) {
    return formPhoneChange?.call(fistName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String fistName)? formFirstNameChange,
    TResult Function(String fistName)? formEmailChange,
    TResult Function(String fistName)? formPhoneChange,
    required TResult orElse(),
  }) {
    if (formPhoneChange != null) {
      return formPhoneChange(fistName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FormFirstNameChange value) formFirstNameChange,
    required TResult Function(FormEmailChange value) formEmailChange,
    required TResult Function(FormPhoneChange value) formPhoneChange,
  }) {
    return formPhoneChange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FormFirstNameChange value)? formFirstNameChange,
    TResult Function(FormEmailChange value)? formEmailChange,
    TResult Function(FormPhoneChange value)? formPhoneChange,
  }) {
    return formPhoneChange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FormFirstNameChange value)? formFirstNameChange,
    TResult Function(FormEmailChange value)? formEmailChange,
    TResult Function(FormPhoneChange value)? formPhoneChange,
    required TResult orElse(),
  }) {
    if (formPhoneChange != null) {
      return formPhoneChange(this);
    }
    return orElse();
  }
}

abstract class FormPhoneChange implements FormEvent {
  factory FormPhoneChange(String fistName) = _$FormPhoneChange;

  @override
  String get fistName => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $FormPhoneChangeCopyWith<FormPhoneChange> get copyWith =>
      throw _privateConstructorUsedError;
}
