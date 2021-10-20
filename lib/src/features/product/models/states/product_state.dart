
import 'package:architecture_bloc/src/features/product/models/product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_state.freezed.dart';
part 'product_state.g.dart';

@freezed
class ProductState with _$ProductState {
  factory ProductState({
    required List<Product> products,
    required ProductStatus status,
    }) =  Data;
	
  factory ProductState.fromJson(Map<String, dynamic> json) =>
			_$ProductStateFromJson(json);
}

enum ProductStatus { initial, success, failure }
