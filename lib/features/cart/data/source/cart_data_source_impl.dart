import 'package:injectable/injectable.dart';
import 'package:task3/core/error/error_handler.dart';
import 'package:task3/core/network/api_services.dart';
import 'package:task3/features/cart/data/models/product_model.dart';
import 'package:task3/features/cart/data/source/cart_data_source.dart';

@LazySingleton(as: CartDataSource)
class CartDataSourceImpl implements CartDataSource {
  final ApiServices apiServices;
  CartDataSourceImpl(this.apiServices);
  @override
  Future<List<ProductModel>> getUserCart(int userId) async {
    try {
      final response = await apiServices.getUserCartByID(userId);
      return response.carts.expand((cart) => cart.products).toList();
    } catch (e) {
      throw ErrorHandler.handle(e).failure;
    }
  }
}
