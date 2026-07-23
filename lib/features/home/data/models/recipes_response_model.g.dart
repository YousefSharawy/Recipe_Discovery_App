// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipes_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RecipesResponseModel _$RecipesResponseModelFromJson(
  Map<String, dynamic> json,
) => _RecipesResponseModel(
  recipes: (json['recipes'] as List<dynamic>)
      .map((e) => RecipeModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  total: (json['total'] as num).toInt(),
  skip: (json['skip'] as num).toInt(),
  limit: (json['limit'] as num).toInt(),
);

Map<String, dynamic> _$RecipesResponseModelToJson(
  _RecipesResponseModel instance,
) => <String, dynamic>{
  'recipes': instance.recipes,
  'total': instance.total,
  'skip': instance.skip,
  'limit': instance.limit,
};
