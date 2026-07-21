import 'package:flutter/material.dart';
import 'package:task3/core/resources/color_manager.dart';
import 'package:task3/core/resources/font_manager.dart';
import 'package:task3/core/resources/typography_manager.dart';

import '../../../../core/resources/spacing_values_manager.dart';

class CategoryFilterChips extends StatelessWidget {
  const CategoryFilterChips({super.key, required this.label, required this.isSelected, required this.onTap});
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        margin:  EdgeInsetsDirectional.only(end: AppWidth.s12),
        padding: EdgeInsets.symmetric(vertical: AppHeight.s9,horizontal: AppWidth.s24),
        height: AppHeight.s41,
        decoration: BoxDecoration(
          color: isSelected? ColorManager.brandSecondary : ColorManager.neutralGrey4,
          borderRadius: BorderRadius.circular(AppRadius.s40)
        ),
        child: Center(
          child: Text(label,style: getRegularStyle(
            fontFamily: FontConstants.sofiaPro,
            fontSize: FontSize.s16,
          color: isSelected ? ColorManager.white : ColorManager.naturalDark 
          ),),
        ),
      ),
    );
  }
}