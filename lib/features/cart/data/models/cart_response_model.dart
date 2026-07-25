
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:task3/features/cart/data/models/cart_model.dart';
part 'cart_response_model.freezed.dart';
part 'cart_response_model.g.dart';
@freezed
abstract class CartResponseModel with _$CartResponseModel{
 const factory CartResponseModel({
  required List<CartModel> carts, 
  required int total, 
  required int skip ,
  required int limit, 
}) = _CartResponseModel;
factory CartResponseModel.fromJson(Map<String,dynamic>json) => _$CartResponseModelFromJson(json);
}