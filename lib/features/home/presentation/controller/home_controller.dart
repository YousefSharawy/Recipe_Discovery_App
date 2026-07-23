import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:task3/features/home/domain/usecases/get_all_recipes_use_case.dart';
import 'package:task3/features/home/presentation/controller/home_states.dart';

@lazySingleton
class HomeController with ChangeNotifier {
  final GetAllRecipesUseCase getAllRecipesUseCase;
  HomeController(this.getAllRecipesUseCase);
  HomeStates _state = HomeStates.initial();
  HomeStates get state => _state;
  void emit(HomeStates state) {
    _state = state;
    notifyListeners();
  }

  Future<void> getAllRecipes() async {
    emit(HomeStates.loading());
    final result = await getAllRecipesUseCase();
    result.fold(
      (e) => {emit(HomeStates.error(e.message))},
      (recipes) => {emit(HomeStates.success(recipes))},
    );
  }
}
