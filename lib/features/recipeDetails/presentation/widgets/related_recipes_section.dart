import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task3/core/resources/color_manager.dart';
import 'package:task3/core/resources/font_manager.dart';
import 'package:task3/core/resources/spacing_values_manager.dart';
import 'package:task3/core/resources/typography_manager.dart';
import 'package:task3/features/home/presentation/controller/home_controller.dart';
import 'package:task3/features/home/presentation/controller/home_states.dart';
import 'package:task3/features/home/presentation/widgets/header_row.dart';
import 'package:task3/features/recipeDetails/presentation/widgets/related_recipe_card.dart';

class RelatedRecipesSection extends StatelessWidget {
  const RelatedRecipesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HeaderRow(header: 'Related Recipes', onTap: () {}),
        SizedBox(height: AppHeight.s12),
        SizedBox(
          height: AppHeight.s150,
          child: Consumer<HomeController>(
            builder: (context, controller, _) => switch (controller.state) {
              HomeLoading() => const Center(child: CircularProgressIndicator()),
              HomeError(:final message) => Center(
                child: Text(
                  message,
                  style: getRegularStyle(
                    fontSize: FontSize.s14,
                    color: ColorManager.neutralGrey3,
                  ),
                ),
              ),
              HomeSuccess(:final recipes) => ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.zero,
                itemCount: 3,
                itemBuilder: (context, index) =>
                    RelatedRecipeCard(recipe: recipes[index]),
              ),
              HomeInitial() => const SizedBox.shrink(),
            },
          ),
        ),
      ],
    );
  }
}
