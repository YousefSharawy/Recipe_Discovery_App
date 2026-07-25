import 'package:task3/features/cart/data/models/cart_model.dart';

import '../../data/models/product_model.dart';

class CartResponseEntity {
  final List<CartModel> carts;
  final int total;
  final int skip ;
  final int limit; 
  CartResponseEntity({
    required this.carts,
    required this.total,
    required this.skip,
    required this.limit,
  });
}
