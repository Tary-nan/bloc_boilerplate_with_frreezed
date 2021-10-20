import 'package:architecture_bloc/src/features/product/models/model.dart';
import 'package:architecture_bloc/src/features/product/services/product_service.dart';
import 'package:bloc/bloc.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  late Service _service;
  ProductBloc({required repository})
      : super(ProductState(
            products: <Product>[], status: ProductStatus.initial)) {
    _service = repository;
    on<ProductEvent>(_event);
  }

  void _event(ProductEvent event, emit) async {
    await event.when(fetch: () async {
      if (state.status == ProductStatus.initial) {
        try {
          final products = await _service.fetch();
          final newState =
              state.copyWith(status: ProductStatus.success, products: products);
          emit(newState);
        } catch (_) {
          emit(state
              .copyWith(status: ProductStatus.failure, products: <Product>[]));
        }
      }
    }, toogleFavorite: (Product product) {
      final update = <Product>[
        for (var item in state.products)
          if (item.id == product.id)
            item.copyWith(isFavorite: !item.isFavorite)
          else
            item
      ];
      emit(state.copyWith(products: update));
    });
  }
}
