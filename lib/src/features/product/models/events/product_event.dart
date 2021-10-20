
import 'package:architecture_bloc/src/features/product/models/product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_event.freezed.dart';


@freezed
class ProductEvent with _$ProductEvent {
  factory ProductEvent.toogleFavorite(Product item) = ToggleFavoriteEvent;
  factory ProductEvent.fetch() = FetchProductEvent;
}
