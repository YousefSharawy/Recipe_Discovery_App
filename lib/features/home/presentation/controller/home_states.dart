import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/recipe_entity.dart';
part 'home_states.freezed.dart';
@freezed 
sealed class HomeStates with _$HomeStates{
  const factory HomeStates.initial() = HomeInitial;
  const factory HomeStates.loading() = HomeLoading;
  const factory HomeStates.success( List<RecipeEntity>recipes) = HomeSuccess;
  const factory HomeStates.error(String message) = HomeError;
  const factory HomeStates.searchRecipeInitial() = SearchRecipeInitial;
  const factory HomeStates.searchRecipeLoading() = SearchRecipeLoading;
  const factory HomeStates.searchRecipeSuccess( List<RecipeEntity>recipes) = SearchRecipeSuccess;
  const factory HomeStates.searchRecipeError(String message) = SearchRecipeError;
  const factory HomeStates.getRecipesByMealTypeInitial() = GetRecipesByMealTypeInitial;
  const factory HomeStates.getRecipesByMealTypeLoading() = GetRecipesByMealTypeLoading;
  const factory HomeStates.getRecipesByMealTypeSucess( List<RecipeEntity>recipes) = GetRecipesByMealTypeSucess;
  const factory HomeStates.getRecipesByMealTypeError(String message) = GetRecipesByMealTypeError;
}