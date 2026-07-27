import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:task3/core/error/failure.dart';
import 'package:task3/features/home/data/mappers/recipe_model_mapper.dart';
import 'package:task3/features/home/data/source/home_data_source.dart';
import 'package:task3/features/home/domain/entities/recipe_entity.dart';
import 'package:task3/features/home/domain/repository/home_repository.dart';
@LazySingleton(as:HomeRepository )
class HomeRepositoryImpl implements HomeRepository{
  final HomeDataSource dataSource;
  HomeRepositoryImpl(this.dataSource);
  @override
  Future<Either<Failure, List<RecipeEntity>>> getAllRecipes() async{
    try {
      final response = await dataSource.getAllRecipes();
      return Right(response.map((e)=>e.toEntity()).toList());
    } on Failure catch (e) {
      return Left(e);
    }
  }
  
  @override
  Future<Either<Failure, List<RecipeEntity>>> searchOnRecipe(String query) async {
    try {
      final response = await dataSource.searchOnRecipe(query);
      return Right(response.map((e)=>e.toEntity()).toList());
    } on Failure catch (e) {
      return Left(e);
    }
  }
}