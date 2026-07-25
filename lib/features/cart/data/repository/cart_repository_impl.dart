import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:task3/core/error/failure.dart';
import 'package:task3/features/cart/data/mapper/product_model_mapper.dart';
import 'package:task3/features/cart/data/source/cart_data_source.dart';
import 'package:task3/features/cart/domain/entities/product_entity.dart';
import 'package:task3/features/cart/domain/repository/cart_repository.dart';

@LazySingleton(as: CartRepository)
class CartRepositoryImpl implements CartRepository {
  final CartDataSource dataSource;
  CartRepositoryImpl(this.dataSource);
  @override
  Future<Either<Failure, List<ProductEntity>>> getUserCart(int userId) async {
    try {
      final products = await dataSource.getUserCart(userId);
      return Right(products.map((product) => product.toEntity()).toList());
    } on Failure catch (e) {
      return Left(e);
    }
  }
}
