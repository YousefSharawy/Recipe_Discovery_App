import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task3/core/resources/color_manager.dart';
import 'package:task3/core/resources/font_manager.dart';
import 'package:task3/core/resources/spacing_values_manager.dart';
import 'package:task3/core/resources/typography_manager.dart';
import 'package:task3/core/injection.dart';
import 'package:task3/features/recipeDetails/presentation/controller/recipe_details_controller.dart';

import '../../../home/domain/entities/recipe_entity.dart';

class SearchRecipeContainer extends StatelessWidget {
  const SearchRecipeContainer({super.key, required this.recipe});
  final RecipeEntity recipe;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
        getIt<RecipeDetailsController>().show(context, recipe);
      },
      child: Container(
        margin: EdgeInsetsDirectional.only(end: AppWidth.s16),
        width: AppWidth.s100,
        height: AppHeight.s136,
        decoration: BoxDecoration(
          color: ColorManager.white,
          borderRadius: BorderRadius.circular(AppRadius.s16),
          boxShadow: [
            BoxShadow(
              color: Color(0xff063336).withValues(alpha: 0.1),
              blurRadius: 16,
              spreadRadius: 0,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.all(8.sp),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadiusGeometry.circular(AppRadius.s20),
                child: Image.network(
                  errorBuilder: (context, error, stackTrace) {
                    return Text("This image is camera shy");
                  },
                  fit: .fill,
                  recipe.image,
                  width: AppWidth.s84,
                  height: AppHeight.s84,
                ),
              ),
              SizedBox(height: AppHeight.s8),
              SizedBox(
                height: AppHeight.s23,
                child: Text(
                  recipe.name,
                  maxLines: 2,
                  overflow: .ellipsis,
                  style: getRegularStyle(
                    fontFamily: FontConstants.sofiaPro,
                    fontSize: FontSize.s16,
                    color: ColorManager.naturalDark,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
