import 'package:flutter/material.dart';
import 'package:task3/core/resources/color_manager.dart';
import 'package:task3/core/resources/font_manager.dart';
import 'package:task3/core/resources/spacing_values_manager.dart';
import 'package:task3/core/resources/typography_manager.dart';
import 'package:task3/core/injection.dart';
import 'package:task3/features/home/domain/entities/recipe_entity.dart';
import 'package:task3/features/recipeDetails/presentation/controller/recipe_details_controller.dart';

class RelatedRecipeCard extends StatelessWidget {
  const RelatedRecipeCard({super.key, required this.recipe});

  final RecipeEntity recipe;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => getIt<RecipeDetailsController>().show(context, recipe),
      child: Container(
        width: AppWidth.s110,
        margin: EdgeInsetsDirectional.only(end: AppWidth.s12),
        padding: EdgeInsets.all(AppWidth.s8),
        decoration: BoxDecoration(
          color: ColorManager.white,
          borderRadius: BorderRadius.circular(AppRadius.s16),
          boxShadow: [
            BoxShadow(
              color: ColorManager.naturalDark.withValues(alpha: 0.06),
              blurRadius: AppRadius.s16,
              offset: Offset(0, AppHeight.s4),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(AppRadius.s12),
              child: Image.network(
                recipe.image,
                width: double.infinity,
                height: AppHeight.s90,
                fit: BoxFit.cover,
                errorBuilder: (_, _, _) => Container(
                  width: double.infinity,
                  height: AppHeight.s90,
                  color: ColorManager.neutralGrey5,
                  child: Icon(
                    Icons.restaurant_rounded,
                    color: ColorManager.neutralGrey2,
                    size: AppWidth.s24,
                  ),
                ),
              ),
            ),
            SizedBox(height: AppHeight.s8),
            Text(
              recipe.name,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: getBoldStyle(
                fontSize: FontSize.s14,
                color: ColorManager.naturalDark,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
