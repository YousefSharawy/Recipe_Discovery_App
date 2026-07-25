import 'package:task3/features/cart/data/models/product_model.dart';
import 'package:task3/features/cart/domain/entities/product_entity.dart';

extension ProductModelMapper on ProductModel {
  ProductEntity toEntity() => ProductEntity(
    id: id,
    title: title,
    price: price,
    quantity: quantity,
    total: total,
    discountPercentage: discountPercentage,
    discountedTotal: discountedTotal,
    thumbnail: thumbnail,
  );
}
