import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';
part 'product.g.dart';

@freezed
class Product with _$Product {
  factory Product({
    required int id,
    required String name,
    required String imageName,
    required String state,
    required String park,
    required Category category,
    @Default(false) bool isFavorite,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}

enum Category { featured, lakes, rivers }
