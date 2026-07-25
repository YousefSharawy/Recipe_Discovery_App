import 'package:dartz/dartz.dart';
import 'package:task3/core/error/failure.dart';
import 'package:task3/features/cart/domain/entities/product_entity.dart';

abstract class CartRepository {
  Future<Either<Failure, List<ProductEntity>>> getUserCart(int userId);
}
