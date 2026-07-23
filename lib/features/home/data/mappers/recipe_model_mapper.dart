import 'package:task3/features/home/data/models/recipe_model.dart';
import 'package:task3/features/home/domain/entities/recipe_entity.dart';

extension RecipeModelMapper on RecipeModel {
  RecipeEntity toEntity() => RecipeEntity(
    id: id,
    name: name,
    ingredients: ingredients,
    instructions: instructions,
    prepTimeMinutes: prepTimeMinutes,
    cookTimeMinutes: cookTimeMinutes,
    caloriesPerServing: caloriesPerServing,
    image: image,
  );
}
