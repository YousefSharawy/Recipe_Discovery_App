import 'package:task3/features/cart/data/models/cart_model.dart';
import 'package:task3/features/cart/domain/entities/cart_entity.dart';

extension CartModelMapper on CartModel {
  CartEntity toEntity() => CartEntity(
    id: id,
    products: products,
    total: total,
    discountedTotal: discountedTotal,
    userId: userId,
    totalProducts: totalProducts,
    totalQuantity: totalQuantity,
  );
}
