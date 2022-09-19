import 'package:architecture_bloc/src/features/favorite/show_favorite.dart';
import 'package:architecture_bloc/src/features/filtered_product/bloc/filter_product_bloc.dart';
import 'package:architecture_bloc/src/features/product/bloc/product_bloc.dart';
import 'package:architecture_bloc/src/features/product/models/model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const ButtonFavoriteShow(),
              BlocBuilder<FilterProductBloc, List<Product>>(
                  builder: (context, state) {
                return Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    '${state.where((element) => element.isFavorite).length}',
                    style: const TextStyle(fontSize: 23),
                  ),
                );
              })
            ],
          ),
        ],
      ),
      body: BlocBuilder<FilterProductBloc, List<Product>>(
        builder: (context, state) {
        // final products = context
        //     .select<FilterProductBloc, List<Product>>((bloc) => bloc.state);

            // print(products.where((x) => x.isFavorite).length);

        return state.isNotEmpty? ListView.builder(
            itemCount: state.length,
            itemBuilder: (context, index) {
              return ListTile(
                onTap: () {
                  context
                      .read<ProductBloc>()
                      .add(ProductEvent.toogleFavorite(state[index]));
                },
                title: Text(state[index].name),
                trailing: Icon(state[index].isFavorite
                    ? Icons.favorite
                    : Icons.favorite_border),
                leading: CircleAvatar(
                  backgroundImage:
                      AssetImage('assets/${state[index].imageName}.jpg'),
                ),
              );
            }): const Center(
              child: Text('Vous n\'avez plus de favorie ', style: TextStyle(fontSize: 23)),
            );
      }),
    );
  }
}

class ButtonFavoriteShow extends StatelessWidget {
  const ButtonFavoriteShow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state =
        context.select<ShowOnlyFavorite, bool>((cubit) => cubit.state);
    //
    return Builder(builder: (context) {
      final favs = context.select<FilterProductBloc, Iterable>(
          (bloc) => bloc.state.where((x) => x.isFavorite));
      return Switch(
          activeColor: Colors.orange,
          value: favs.isNotEmpty ? state : false,
          onChanged: favs.isNotEmpty ? (value) {
            context.read<ShowOnlyFavorite>().toggle();
          }: null);
    });
  }
}
