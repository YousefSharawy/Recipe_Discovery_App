import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:task3/features/cart/domain/usecases/get_user_cart_use_case.dart';
import 'package:task3/features/cart/presentation/controller/cart_states.dart';

@lazySingleton
class CartController extends ChangeNotifier {
  final GetUserCartUseCase getUserCartUseCase;
  CartController(this.getUserCartUseCase);
  CartStates _state = CartStates.initial();
  CartStates get state => _state;
  void emit(CartStates state) {
    _state = state;
    notifyListeners();
  }

  Future<void> getUserCart(int userId) async {
    emit(CartStates.loading());
    final result = await getUserCartUseCase(userId);
    result.fold(
      (e) => emit(CartStates.error(e.message)),
      (products) => emit(CartStates.success(products)),
    );
  }
}
