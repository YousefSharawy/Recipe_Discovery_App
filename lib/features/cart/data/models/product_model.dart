
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:task3/features/cart/data/models/cart_model.dart';
import 'package:task3/features/cart/data/models/product_model.dart';
part 'product_model.freezed.dart';
part 'product_model.g.dart';
@freezed
abstract class ProductModel with _$ProductModel{
 const factory ProductModel({
  required int id, 
  required String title,
  required double price,
  required int quantity,
  required double total,
  required double discountPercentage,
  required double discountedTotal,
  required String thumbnail,
}) = _ProductModel;
factory ProductModel.fromJson(Map<String,dynamic>json) => _$ProductModelFromJson(json);
}