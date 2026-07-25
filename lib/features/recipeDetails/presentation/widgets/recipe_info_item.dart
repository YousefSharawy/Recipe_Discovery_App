import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task3/core/resources/color_manager.dart';
import 'package:task3/core/resources/font_manager.dart';
import 'package:task3/core/resources/typography_manager.dart';
import 'package:task3/core/widgets/custom_icon_button.dart';

import '../../../../core/resources/spacing_values_manager.dart';

class RecipeInfoItem extends StatelessWidget {
  const RecipeInfoItem({
    super.key,
    required this.icon,
    required this.text,
  });

  final String icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        CustomIconButton(
          icon: icon,
          width: AppWidth.s40,
          height: AppHeight.s40,
          iconWidth: 24.w,
          iconHeight: 24.w,
          backgroundColor: ColorManager.neutralGrey4,
        ),
        SizedBox(width: AppWidth.s12),
        Text(
          text,
          style: getRegularStyle(
            fontSize: FontSize.s16,
            color: ColorManager.naturalDark,
          ),
        ),
      ],
    );
  }
}
