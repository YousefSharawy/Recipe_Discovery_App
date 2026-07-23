import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:task3/features/home/data/models/recipe_model.dart';
part 'recipes_response_model.freezed.dart';
part 'recipes_response_model.g.dart';

@freezed
abstract class RecipesResponseModel with _$RecipesResponseModel {
  const factory RecipesResponseModel({
   required List<RecipeModel> recipes,
   required int total,
   required int skip,
   required int limit,
  }) = _RecipesResponseModel;
  factory RecipesResponseModel.fromJson(Map<String, dynamic> json) =>
      _$RecipesResponseModelFromJson(json);
}
