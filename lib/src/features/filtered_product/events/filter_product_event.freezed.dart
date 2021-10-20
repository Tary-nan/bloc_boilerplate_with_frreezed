// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'filter_product_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FilterProductEventTearOff {
  const _$FilterProductEventTearOff();

  UpdateProduct update(List<Product> data) {
    return UpdateProduct(
      data,
    );
  }
}

/// @nodoc
const $FilterProductEvent = _$FilterProductEventTearOff();

/// @nodoc
mixin _$FilterProductEvent {
  List<Product> get data => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Product> data) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Product> data)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Product> data)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateProduct value) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UpdateProduct value)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateProduct value)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FilterProductEventCopyWith<FilterProductEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterProductEventCopyWith<$Res> {
  factory $FilterProductEventCopyWith(
          FilterProductEvent value, $Res Function(FilterProductEvent) then) =
      _$FilterProductEventCopyWithImpl<$Res>;
  $Res call({List<Product> data});
}

/// @nodoc
class _$FilterProductEventCopyWithImpl<$Res>
    implements $FilterProductEventCopyWith<$Res> {
  _$FilterProductEventCopyWithImpl(this._value, this._then);

  final FilterProductEvent _value;
  // ignore: unused_field
  final $Res Function(FilterProductEvent) _then;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ));
  }
}

/// @nodoc
abstract class $UpdateProductCopyWith<$Res>
    implements $FilterProductEventCopyWith<$Res> {
  factory $UpdateProductCopyWith(
          UpdateProduct value, $Res Function(UpdateProduct) then) =
      _$UpdateProductCopyWithImpl<$Res>;
  @override
  $Res call({List<Product> data});
}

/// @nodoc
class _$UpdateProductCopyWithImpl<$Res>
    extends _$FilterProductEventCopyWithImpl<$Res>
    implements $UpdateProductCopyWith<$Res> {
  _$UpdateProductCopyWithImpl(
      UpdateProduct _value, $Res Function(UpdateProduct) _then)
      : super(_value, (v) => _then(v as UpdateProduct));

  @override
  UpdateProduct get _value => super._value as UpdateProduct;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(UpdateProduct(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ));
  }
}

/// @nodoc

class _$UpdateProduct implements UpdateProduct {
  _$UpdateProduct(this.data);

  @override
  final List<Product> data;

  @override
  String toString() {
    return 'FilterProductEvent.update(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateProduct &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  $UpdateProductCopyWith<UpdateProduct> get copyWith =>
      _$UpdateProductCopyWithImpl<UpdateProduct>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Product> data) update,
  }) {
    return update(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Product> data)? update,
  }) {
    return update?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Product> data)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateProduct value) update,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UpdateProduct value)? update,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateProduct value)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class UpdateProduct implements FilterProductEvent {
  factory UpdateProduct(List<Product> data) = _$UpdateProduct;

  @override
  List<Product> get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $UpdateProductCopyWith<UpdateProduct> get copyWith =>
      throw _privateConstructorUsedError;
}
