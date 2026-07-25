
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:task3/features/cart/data/models/cart_model.dart';
import 'package:task3/features/cart/data/models/product_model.dart';
part 'cart_model.freezed.dart';
part 'cart_model.g.dart';
@freezed
abstract class CartModel with _$CartModel{
 const factory CartModel({
  required int id, 
  required List<ProductModel> products, 
  required double total, 
  required double discountedTotal ,
  required int userId, 
  required int totalProducts, 
  required int totalQuantity, 
}) = _CartModel;
factory CartModel.fromJson(Map<String,dynamic>json) => _$CartModelFromJson(json);
}