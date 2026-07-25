import 'package:task3/features/cart/data/models/product_model.dart';

abstract class CartDataSource {
  Future<List<ProductModel>> getUserCart(int userId);
}
