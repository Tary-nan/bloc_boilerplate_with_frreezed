// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductState _$ProductStateFromJson(Map<String, dynamic> json) {
  return Data.fromJson(json);
}

/// @nodoc
class _$ProductStateTearOff {
  const _$ProductStateTearOff();

  Data call({required List<Product> products, required ProductStatus status}) {
    return Data(
      products: products,
      status: status,
    );
  }

  ProductState fromJson(Map<String, Object> json) {
    return ProductState.fromJson(json);
  }
}

/// @nodoc
const $ProductState = _$ProductStateTearOff();

/// @nodoc
mixin _$ProductState {
  List<Product> get products => throw _privateConstructorUsedError;
  ProductStatus get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductStateCopyWith<ProductState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductStateCopyWith<$Res> {
  factory $ProductStateCopyWith(
          ProductState value, $Res Function(ProductState) then) =
      _$ProductStateCopyWithImpl<$Res>;
  $Res call({List<Product> products, ProductStatus status});
}

/// @nodoc
class _$ProductStateCopyWithImpl<$Res> implements $ProductStateCopyWith<$Res> {
  _$ProductStateCopyWithImpl(this._value, this._then);

  final ProductState _value;
  // ignore: unused_field
  final $Res Function(ProductState) _then;

  @override
  $Res call({
    Object? products = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      products: products == freezed
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ProductStatus,
    ));
  }
}

/// @nodoc
abstract class $DataCopyWith<$Res> implements $ProductStateCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res>;
  @override
  $Res call({List<Product> products, ProductStatus status});
}

/// @nodoc
class _$DataCopyWithImpl<$Res> extends _$ProductStateCopyWithImpl<$Res>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(Data _value, $Res Function(Data) _then)
      : super(_value, (v) => _then(v as Data));

  @override
  Data get _value => super._value as Data;

  @override
  $Res call({
    Object? products = freezed,
    Object? status = freezed,
  }) {
    return _then(Data(
      products: products == freezed
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ProductStatus,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Data implements Data {
  _$Data({required this.products, required this.status});

  factory _$Data.fromJson(Map<String, dynamic> json) => _$$DataFromJson(json);

  @override
  final List<Product> products;
  @override
  final ProductStatus status;

  @override
  String toString() {
    return 'ProductState(products: $products, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Data &&
            (identical(other.products, products) ||
                const DeepCollectionEquality()
                    .equals(other.products, products)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(products) ^
      const DeepCollectionEquality().hash(status);

  @JsonKey(ignore: true)
  @override
  $DataCopyWith<Data> get copyWith =>
      _$DataCopyWithImpl<Data>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataToJson(this);
  }
}

abstract class Data implements ProductState {
  factory Data(
      {required List<Product> products,
      required ProductStatus status}) = _$Data;

  factory Data.fromJson(Map<String, dynamic> json) = _$Data.fromJson;

  @override
  List<Product> get products => throw _privateConstructorUsedError;
  @override
  ProductStatus get status => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}
