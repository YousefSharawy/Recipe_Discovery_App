import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:task3/features/home/domain/usecases/get_all_recipes_use_case.dart';
import 'package:task3/features/home/domain/usecases/get_recipes_by_meal_type_usecase.dart';
import 'package:task3/features/home/domain/usecases/search_on_recipe_use_case.dart';
import 'package:task3/features/home/presentation/controller/home_states.dart';

@lazySingleton
class HomeController with ChangeNotifier {
  final GetAllRecipesUseCase getAllRecipesUseCase;
  final SearchOnRecipeUseCase searchOnRecipeUseCase;
  final GetRecipesByMealTypeUsecase getRecipesByMealTypeUsecase;
  HomeController(this.getRecipesByMealTypeUsecase,this.getAllRecipesUseCase,this.searchOnRecipeUseCase);
  HomeStates _state = HomeStates.initial();
  HomeStates get state => _state;
  HomeStates searcState = HomeStates.searchRecipeInitial();
  HomeStates get searchState => searcState;


  HomeStates recipeByMealState = HomeStates.getRecipesByMealTypeInitial();
  HomeStates get getRecipeByMealState => recipeByMealState;

  void emit(HomeStates state) {
    _state = state;
    notifyListeners();
  }
  void emitSeacrh(HomeStates searchState) {
    searcState = searchState;
    notifyListeners();
  }
  void emitGetRecipesByMealType(HomeStates getRecipeByMealState) {
    recipeByMealState = getRecipeByMealState;
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
   Future<void> searchOnRecipe(String query) async {
    emitSeacrh(HomeStates.searchRecipeLoading());
    final result = await searchOnRecipeUseCase(query);
    result.fold(
      (e) => {emitSeacrh(HomeStates.searchRecipeError(e.message))},
      (recipes) => {emitSeacrh(HomeStates.searchRecipeSuccess(recipes))},
    );
  }
   Future<void> getRecipesByMealType({required String mealType}) async {
    emitGetRecipesByMealType(HomeStates.getRecipesByMealTypeLoading());
    final result = await getRecipesByMealTypeUsecase(mealType: mealType);
    result.fold(
      (e) => {emitGetRecipesByMealType(HomeStates.getRecipesByMealTypeError(e.message))},
      (recipes) => {emitGetRecipesByMealType(HomeStates.getRecipesByMealTypeSucess(recipes))},
    );
  }
}
