import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task3/core/resources/assets_manager.dart';
import 'package:task3/core/resources/color_manager.dart';
import 'package:task3/core/resources/font_manager.dart';
import 'package:task3/core/resources/spacing_values_manager.dart';
import 'package:task3/core/resources/typography_manager.dart';
import 'package:task3/core/injection.dart';
import 'package:task3/features/recipeDetails/presentation/controller/recipe_details_controller.dart';

import '../../domain/entities/recipe_entity.dart';

class RecipeConatiner extends StatelessWidget {
  const RecipeConatiner({super.key, required this.recipe});
  final RecipeEntity recipe;
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        getIt<RecipeDetailsController>().show(context, recipe);
      },
      child: Container(
        margin: EdgeInsetsDirectional.only(end: AppWidth.s16),
        width: AppWidth.s200,
        height: AppHeight.s240,
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
          padding: EdgeInsets.all(16.sp),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadiusGeometry.circular(AppRadius.s20),
                child: Image.network(
                  errorBuilder: (context, error, stackTrace) {
                    return Text("This image is camera shy");
                  },
                  fit: .fill ,
                  recipe.image,
                  width: AppWidth.s168,
                  height: AppHeight.s126,
                ),
              ),
              SizedBox(height: AppHeight.s12),
              SizedBox(
                height: AppHeight.s44,
                child: Text(
                  recipe.name,
                  maxLines: 2,
                  overflow: .ellipsis,
                  style: getBoldStyle(
                    fontFamily: FontConstants.sofiaPro,
                    fontSize: FontSize.s16,
                    color: ColorManager.naturalDark,
                  ),
                ),
              ),
              SizedBox(height: AppHeight.s12),
              Expanded(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      IconAssets.calories,
                      width: AppWidth.s14,
                      height: AppHeight.s14,
                      color: ColorManager.neutralGrey2,
                    ),
                    SizedBox(width: AppWidth.s4),
                    Flexible(
                      child: Text(
                        "${recipe.caloriesPerServing} Kcal",
                        overflow: TextOverflow.ellipsis,
                        style: getRegularStyle(
                          fontFamily: FontConstants.sofiaPro,
                          fontSize: FontSize.s12,
                          color: ColorManager.neutralGrey2,
                        ),
                      ),
                    ),
                    SizedBox(width: AppWidth.s4),
                    Text(
                      "•",
                      style: getRegularStyle(
                        fontFamily: FontConstants.sofiaPro,
                        fontSize: FontSize.s12,
                        color: ColorManager.neutralGrey2,
                      ),
                    ),
                    SizedBox(width: AppWidth.s4),
                    Image.asset(
                      IconAssets.time,
                      width: AppWidth.s14,
                      height: AppHeight.s14,
                      color: ColorManager.neutralGrey2,
                    ),
                    SizedBox(width: AppWidth.s4),
                    Flexible(
                      child: Text(
                        "${recipe.cookTimeMinutes} mins",
                        overflow: TextOverflow.ellipsis,
                        style: getRegularStyle(
                          fontFamily: FontConstants.sofiaPro,
                          fontSize: FontSize.s12,
                          color: ColorManager.neutralGrey2,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
