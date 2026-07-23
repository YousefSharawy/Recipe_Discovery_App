import 'package:injectable/injectable.dart';
import 'package:task3/core/error/error_handler.dart';
import 'package:task3/core/network/api_services.dart';
import 'package:task3/features/home/data/models/recipe_model.dart';
import 'package:task3/features/home/data/source/home_data_source.dart';

@LazySingleton(as: HomeDataSource)
class HomeDataSourceImpl implements HomeDataSource {
  final ApiServices apiServices;
  HomeDataSourceImpl(this.apiServices);
  @override
  Future<List<RecipeModel>> getAllRecipes() async {
    try {
      final response =  await apiServices.getRecipes();
      return response.recipes;
    } catch (e) {
      throw ErrorHandler.handle(e).failure;
    }
  }
}
