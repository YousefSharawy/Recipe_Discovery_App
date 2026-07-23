
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:task3/features/home/domain/repository/home_repository.dart';

import '../../../../core/error/failure.dart';
import '../entities/recipe_entity.dart';

@lazySingleton
class GetAllRecipesUseCase {
  HomeRepository repository;
  GetAllRecipesUseCase(this.repository);
   Future<Either<Failure,List<RecipeEntity>>>call()=>repository.getAllRecipes();
}