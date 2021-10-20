
import 'package:architecture_bloc/src/features/product/models/model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'filter_product_event.freezed.dart';


@freezed
class FilterProductEvent with _$FilterProductEvent {
  factory FilterProductEvent.update(List<Product> data) = UpdateProduct;
}
