import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:provider/provider.dart';
import 'package:task3/features/home/domain/entities/recipe_entity.dart';
import 'package:task3/features/home/presentation/controller/home_controller.dart';
import 'package:task3/features/home/presentation/controller/home_states.dart';
import 'package:task3/features/recipeDetails/presentation/recipe_details_view.dart';

@lazySingleton
class RecipeDetailsController {
  final HomeController homeController;
  RecipeDetailsController(this.homeController);

  Future<void> show(BuildContext context, RecipeEntity recipe) {
    if (homeController.state is! HomeSuccess) {
      homeController.getAllRecipes();
    }
    return showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      useRootNavigator: true,
      enableDrag: false,
      backgroundColor: Colors.transparent,
      builder: (_) => ChangeNotifierProvider.value(
        value: homeController,
        child: RecipeDetailsView(recipeEntity: recipe),
      ),
    );
  }
}
