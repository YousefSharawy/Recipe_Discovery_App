import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipe_model.freezed.dart';
part 'recipe_model.g.dart';

@freezed 
abstract class RecipeModel with _$RecipeModel {
  const factory RecipeModel({
required int id,
required String name,
required List<String> ingredients,
required List<String> instructions,
required double prepTimeMinutes,
required double cookTimeMinutes,
required double caloriesPerServing,
required String image,
required List<String> mealType,

  }) = _RecipeModel;


  factory RecipeModel.fromJson(Map<String, dynamic> json) =>_$RecipeModelFromJson(json);
}