import 'package:architecture_bloc/src/features/filtered_product/bloc/filter_product_bloc.dart';
import 'package:architecture_bloc/src/features/product/bloc/product_bloc.dart';
import 'package:architecture_bloc/src/features/product/models/events/product_event.dart';
import 'package:architecture_bloc/src/features/product/services/product_service.dart';
import 'package:architecture_bloc/src/screens/product_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'features/favorite/show_favorite.dart';

class App3 extends StatelessWidget {
  const App3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => ShowOnlyFavorite()),
        BlocProvider(
            create: (_) => ProductBloc(repository: ProductService())
              ..add(ProductEvent.fetch())),
        BlocProvider(
            create: (context) => FilterProductBloc(
                productBloc: context.read<ProductBloc>(),
                showOnlyFavoriteCubit: context.read<ShowOnlyFavorite>()))
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ProductScreen(),
      ),
    );
  }
}
