
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failure.dart';
import '../entities/recipe_entity.dart';
import '../repository/home_repository.dart';

@lazySingleton
class GetRecipesByMealTypeUsecase {

  HomeRepository repository;
  GetRecipesByMealTypeUsecase(this.repository);
   Future<Either<Failure, List<RecipeEntity>>> call ({required String mealType}) =>repository.getRecipesByMealType(mealType: mealType);
}