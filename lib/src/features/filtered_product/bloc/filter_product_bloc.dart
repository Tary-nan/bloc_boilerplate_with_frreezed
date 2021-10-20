import 'dart:async';

import 'package:architecture_bloc/src/features/favorite/show_favorite.dart';
import 'package:architecture_bloc/src/features/filtered_product/events/filter_product_event.dart';
import 'package:architecture_bloc/src/features/product/bloc/product_bloc.dart';
import 'package:architecture_bloc/src/features/product/models/model.dart';
import 'package:architecture_bloc/src/features/product/models/product.dart';
import 'package:bloc/bloc.dart';
import 'package:rxdart/rxdart.dart';

class FilterProductBloc extends Bloc<FilterProductEvent, List<Product>> {
  final ProductBloc productBloc;
  final ShowOnlyFavorite showOnlyFavoriteCubit;

  late StreamSubscription<List<Product>> _filtered;

  FilterProductBloc(
      {required this.productBloc, required this.showOnlyFavoriteCubit})
      : super(productBloc.state.products
            .where((element) =>
                !showOnlyFavoriteCubit.state ? true : element.isFavorite)
            .toList()) {
              
    _filtered = Rx.combineLatest2<ProductState, bool, List<Product>>(
        productBloc.stream.startWith(productBloc.state),
        showOnlyFavoriteCubit.stream.startWith(showOnlyFavoriteCubit.state),
        (products, isFavorite) {
      return products.products
          .where((element) =>
              !showOnlyFavoriteCubit.state ? true : element.isFavorite)
          .toList();
    }).skip(1).listen((items) {
      productBloc.state.copyWith(products: items);
      add(FilterProductEvent.update(items));
    });

    on<FilterProductEvent>((event, emit) => emit(event.when(
        update: (updateProduct) => <Product>[...updateProduct],
     )));
  }

  @override
  Future<void> close() async {
    await _filtered.cancel();
    return super.close();
  }
}
