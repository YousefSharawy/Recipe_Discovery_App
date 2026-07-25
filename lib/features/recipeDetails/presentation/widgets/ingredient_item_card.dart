import 'package:flutter/material.dart';
import 'package:task3/core/resources/color_manager.dart';
import 'package:task3/core/resources/font_manager.dart';
import 'package:task3/core/resources/spacing_values_manager.dart';
import 'package:task3/core/resources/typography_manager.dart';
import 'package:task3/features/recipeDetails/presentation/widgets/step_button.dart';

class IngredientItemCard extends StatelessWidget {
  const IngredientItemCard({
    super.key,
    required this.name,
    required this.quantity,
    required this.onIncrement,
    required this.onDecrement,
  });

  final String name;
  final int quantity;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: AppWidth.s12,
        vertical: AppHeight.s12,
      ),
      decoration: BoxDecoration(
        color: ColorManager.white,
        borderRadius: BorderRadius.circular(AppRadius.s20),
        boxShadow: [
          BoxShadow(
            color: ColorManager.naturalDark.withValues(alpha: 0.06),
            blurRadius: AppRadius.s20,
            offset: Offset(0, AppHeight.s8),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: AppWidth.s56,
            height: AppHeight.s56,
            decoration: BoxDecoration(
              color: ColorManager.neutralGrey5,
              borderRadius: BorderRadius.circular(AppRadius.s16),
            ),
            child: Icon(
              Icons.restaurant_rounded,
              size: AppWidth.s24,
              color: ColorManager.neutralGrey2,
            ),
          ),
          SizedBox(width: AppWidth.s16),
          Expanded(
            child: Text(
              name,
              overflow: TextOverflow.ellipsis,
              style: getBoldStyle(
                fontSize: FontSize.s18,
                color: ColorManager.naturalDark,
              ),
            ),
          ),
          SizedBox(width: AppWidth.s12),
          StepButton(
            icon: Icons.remove,
            borderColor: ColorManager.neutralGrey4,
            iconColor: ColorManager.neutralGrey2,
            onTap: onDecrement,
          ),
          SizedBox(width: AppWidth.s12),
          Text(
            '$quantity',
            style: getBoldStyle(
              fontSize: FontSize.s16,
              color: ColorManager.naturalDark,
            ),
          ),
          SizedBox(width: AppWidth.s12),
          StepButton(
            icon: Icons.add,
            borderColor: ColorManager.brandSecondary,
            iconColor: ColorManager.brandSecondary,
            onTap: onIncrement,
          ),
        ],
      ),
    );
  }
}
