import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failure.dart';
import '../entities/recipe_entity.dart';
import '../repository/home_repository.dart';

@lazySingleton
class SearchOnRecipeUseCase {
  HomeRepository repository;
  SearchOnRecipeUseCase(this.repository);

  Future<Either<Failure, List<RecipeEntity>>> call(String query) =>
      repository.searchOnRecipe(query);
}
