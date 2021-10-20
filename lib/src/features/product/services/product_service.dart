import 'package:architecture_bloc/src/features/product/data/data.dart';
import 'package:architecture_bloc/src/features/product/models/product.dart';

abstract class Service {
  Future<List<Product>> fetch();
}

class ProductService implements Service {
  @override
  Future<List<Product>> fetch() async{
    await Future.delayed(const Duration(seconds: 2));
    return <Product>[...products];
  }
}