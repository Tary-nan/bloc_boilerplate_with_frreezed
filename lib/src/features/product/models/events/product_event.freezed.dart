// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ProductEventTearOff {
  const _$ProductEventTearOff();

  ToggleFavoriteEvent toogleFavorite(Product item) {
    return ToggleFavoriteEvent(
      item,
    );
  }

  FetchProductEvent fetch() {
    return FetchProductEvent();
  }
}

/// @nodoc
const $ProductEvent = _$ProductEventTearOff();

/// @nodoc
mixin _$ProductEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Product item) toogleFavorite,
    required TResult Function() fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Product item)? toogleFavorite,
    TResult Function()? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Product item)? toogleFavorite,
    TResult Function()? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ToggleFavoriteEvent value) toogleFavorite,
    required TResult Function(FetchProductEvent value) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ToggleFavoriteEvent value)? toogleFavorite,
    TResult Function(FetchProductEvent value)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ToggleFavoriteEvent value)? toogleFavorite,
    TResult Function(FetchProductEvent value)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductEventCopyWith<$Res> {
  factory $ProductEventCopyWith(
          ProductEvent value, $Res Function(ProductEvent) then) =
      _$ProductEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProductEventCopyWithImpl<$Res> implements $ProductEventCopyWith<$Res> {
  _$ProductEventCopyWithImpl(this._value, this._then);

  final ProductEvent _value;
  // ignore: unused_field
  final $Res Function(ProductEvent) _then;
}

/// @nodoc
abstract class $ToggleFavoriteEventCopyWith<$Res> {
  factory $ToggleFavoriteEventCopyWith(
          ToggleFavoriteEvent value, $Res Function(ToggleFavoriteEvent) then) =
      _$ToggleFavoriteEventCopyWithImpl<$Res>;
  $Res call({Product item});

  $ProductCopyWith<$Res> get item;
}

/// @nodoc
class _$ToggleFavoriteEventCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res>
    implements $ToggleFavoriteEventCopyWith<$Res> {
  _$ToggleFavoriteEventCopyWithImpl(
      ToggleFavoriteEvent _value, $Res Function(ToggleFavoriteEvent) _then)
      : super(_value, (v) => _then(v as ToggleFavoriteEvent));

  @override
  ToggleFavoriteEvent get _value => super._value as ToggleFavoriteEvent;

  @override
  $Res call({
    Object? item = freezed,
  }) {
    return _then(ToggleFavoriteEvent(
      item == freezed
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as Product,
    ));
  }

  @override
  $ProductCopyWith<$Res> get item {
    return $ProductCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value));
    });
  }
}

/// @nodoc

class _$ToggleFavoriteEvent implements ToggleFavoriteEvent {
  _$ToggleFavoriteEvent(this.item);

  @override
  final Product item;

  @override
  String toString() {
    return 'ProductEvent.toogleFavorite(item: $item)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ToggleFavoriteEvent &&
            (identical(other.item, item) ||
                const DeepCollectionEquality().equals(other.item, item)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(item);

  @JsonKey(ignore: true)
  @override
  $ToggleFavoriteEventCopyWith<ToggleFavoriteEvent> get copyWith =>
      _$ToggleFavoriteEventCopyWithImpl<ToggleFavoriteEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Product item) toogleFavorite,
    required TResult Function() fetch,
  }) {
    return toogleFavorite(item);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Product item)? toogleFavorite,
    TResult Function()? fetch,
  }) {
    return toogleFavorite?.call(item);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Product item)? toogleFavorite,
    TResult Function()? fetch,
    required TResult orElse(),
  }) {
    if (toogleFavorite != null) {
      return toogleFavorite(item);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ToggleFavoriteEvent value) toogleFavorite,
    required TResult Function(FetchProductEvent value) fetch,
  }) {
    return toogleFavorite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ToggleFavoriteEvent value)? toogleFavorite,
    TResult Function(FetchProductEvent value)? fetch,
  }) {
    return toogleFavorite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ToggleFavoriteEvent value)? toogleFavorite,
    TResult Function(FetchProductEvent value)? fetch,
    required TResult orElse(),
  }) {
    if (toogleFavorite != null) {
      return toogleFavorite(this);
    }
    return orElse();
  }
}

abstract class ToggleFavoriteEvent implements ProductEvent {
  factory ToggleFavoriteEvent(Product item) = _$ToggleFavoriteEvent;

  Product get item => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ToggleFavoriteEventCopyWith<ToggleFavoriteEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchProductEventCopyWith<$Res> {
  factory $FetchProductEventCopyWith(
          FetchProductEvent value, $Res Function(FetchProductEvent) then) =
      _$FetchProductEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$FetchProductEventCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res>
    implements $FetchProductEventCopyWith<$Res> {
  _$FetchProductEventCopyWithImpl(
      FetchProductEvent _value, $Res Function(FetchProductEvent) _then)
      : super(_value, (v) => _then(v as FetchProductEvent));

  @override
  FetchProductEvent get _value => super._value as FetchProductEvent;
}

/// @nodoc

class _$FetchProductEvent implements FetchProductEvent {
  _$FetchProductEvent();

  @override
  String toString() {
    return 'ProductEvent.fetch()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FetchProductEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Product item) toogleFavorite,
    required TResult Function() fetch,
  }) {
    return fetch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Product item)? toogleFavorite,
    TResult Function()? fetch,
  }) {
    return fetch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Product item)? toogleFavorite,
    TResult Function()? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ToggleFavoriteEvent value) toogleFavorite,
    required TResult Function(FetchProductEvent value) fetch,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ToggleFavoriteEvent value)? toogleFavorite,
    TResult Function(FetchProductEvent value)? fetch,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ToggleFavoriteEvent value)? toogleFavorite,
    TResult Function(FetchProductEvent value)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class FetchProductEvent implements ProductEvent {
  factory FetchProductEvent() = _$FetchProductEvent;
}
