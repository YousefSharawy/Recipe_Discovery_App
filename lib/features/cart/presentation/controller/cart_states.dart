import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:task3/features/cart/domain/entities/product_entity.dart';
part 'cart_states.freezed.dart';

@freezed
sealed class CartStates with _$CartStates {
  const factory CartStates.initial() = CartInitial;
  const factory CartStates.loading() = CartLoading;
  const factory CartStates.success(List<ProductEntity> products) = CartSuccess;
  const factory CartStates.error(String message) = CartError;
}
