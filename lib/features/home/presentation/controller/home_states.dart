import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/recipe_entity.dart';
part 'home_states.freezed.dart';
@freezed 
sealed class HomeStates with _$HomeStates{
  const factory HomeStates.initial() = HomeInitial;
  const factory HomeStates.loading() = HomeLoading;
  const factory HomeStates.success( List<RecipeEntity>recipes) = HomeSuccess;
  const factory HomeStates.error(String message) = HomeError;
}