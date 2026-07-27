import 'package:dartz/dartz.dart';
import 'package:task3/core/error/failure.dart';
import 'package:task3/features/home/domain/entities/recipe_entity.dart';

abstract class HomeRepository {
  Future<Either<Failure,List<RecipeEntity>>>getAllRecipes();
  Future<Either<Failure,List<RecipeEntity>>>searchOnRecipe(String query);
  Future<Either<Failure,List<RecipeEntity>>>getRecipesByMealType({required String mealType});
}