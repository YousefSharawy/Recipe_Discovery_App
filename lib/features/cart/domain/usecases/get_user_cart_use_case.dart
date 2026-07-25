import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:task3/core/error/failure.dart';
import 'package:task3/features/cart/domain/entities/product_entity.dart';
import 'package:task3/features/cart/domain/repository/cart_repository.dart';

@lazySingleton
class GetUserCartUseCase {
  final CartRepository repository;
  GetUserCartUseCase(this.repository);
  Future<Either<Failure, List<ProductEntity>>> call(int userId) =>
      repository.getUserCart(userId);
}
