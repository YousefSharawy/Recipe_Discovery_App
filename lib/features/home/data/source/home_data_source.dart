import 'package:task3/features/home/data/models/recipe_model.dart';

abstract class HomeDataSource {
  Future <List<RecipeModel>> getAllRecipes ();
  Future <List<RecipeModel>> searchOnRecipe (String query);
}