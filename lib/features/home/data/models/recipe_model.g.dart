// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RecipeModel _$RecipeModelFromJson(Map<String, dynamic> json) => _RecipeModel(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  ingredients: (json['ingredients'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  instructions: (json['instructions'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  prepTimeMinutes: (json['prepTimeMinutes'] as num).toDouble(),
  cookTimeMinutes: (json['cookTimeMinutes'] as num).toDouble(),
  caloriesPerServing: (json['caloriesPerServing'] as num).toDouble(),
  image: json['image'] as String,
);

Map<String, dynamic> _$RecipeModelToJson(_RecipeModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'ingredients': instance.ingredients,
      'instructions': instance.instructions,
      'prepTimeMinutes': instance.prepTimeMinutes,
      'cookTimeMinutes': instance.cookTimeMinutes,
      'caloriesPerServing': instance.caloriesPerServing,
      'image': instance.image,
    };
