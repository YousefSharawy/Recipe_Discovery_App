import 'package:task3/features/cart/data/models/cart_response_model.dart';
import 'package:task3/features/cart/domain/entities/cart_response_entity.dart';

extension CartResponseMapper on CartResponseModel {
  CartResponseEntity toEntity() =>
      CartResponseEntity(carts: carts, total: total, skip: skip, limit: limit);
}
