import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task3/core/resources/assets_manager.dart';
import 'package:task3/core/resources/color_manager.dart';
import 'package:task3/core/resources/font_manager.dart';
import 'package:task3/core/resources/spacing_values_manager.dart';
import 'package:task3/core/resources/typography_manager.dart';

import '../../../home/domain/entities/recipe_entity.dart';

class EditorChoiceContainer extends StatelessWidget {
  const EditorChoiceContainer({
    super.key,
    required this.recipe,
    this.authorName = "James Spader",
    this.onTap,
  });
  final RecipeEntity recipe;
  final String authorName;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: AppHeight.s16),
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
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(AppRadius.s20),
              child: Image.network(
                errorBuilder: (context, error, stackTrace) {
                  return Text("This image is camera shy");
                },
                fit: BoxFit.fill,
                recipe.image,
                width: AppWidth.s100,
                height: AppHeight.s84,
              ),
            ),
            SizedBox(width: AppWidth.s16),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    recipe.name,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: getBoldStyle(
                      fontFamily: FontConstants.sofiaPro,
                      fontSize: FontSize.s16,
                      color: ColorManager.naturalDark,
                    ),
                  ),
                  SizedBox(height: AppHeight.s8),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: AppWidth.s10,
                        backgroundColor: ColorManager.neutralGrey4,
                        backgroundImage: AssetImage(IconAssets.avatar),
                      ),
                      SizedBox(width: AppWidth.s8),
                      Flexible(
                        child: Text(
                          authorName,
                          maxLines: 1,
                          overflow: .ellipsis,
                          style: getRegularStyle(
                            fontFamily: FontConstants.sofiaPro,
                            fontSize: FontSize.s14,
                            color: ColorManager.neutralGrey2,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Spacer(),
            GestureDetector(
              onTap: onTap,
              child: Container(
                width: AppWidth.s24,
                height: AppHeight.s24,
                decoration: BoxDecoration(
                  color: ColorManager.naturalDark,
                  borderRadius: BorderRadius.circular(AppRadius.s10),
                ),
                child: Icon(
                  Icons.arrow_forward,
                  size: AppSize.s14,
                  color: ColorManager.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
