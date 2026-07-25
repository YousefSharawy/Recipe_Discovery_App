import 'package:flutter/material.dart';
import 'package:task3/core/resources/assets_manager.dart';
import 'package:task3/core/resources/color_manager.dart';
import 'package:task3/core/resources/font_manager.dart';
import 'package:task3/core/resources/spacing_values_manager.dart';
import 'package:task3/core/resources/typography_manager.dart';

class CreatorSection extends StatelessWidget {
  const CreatorSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Creator',
          style: getExtraBoldStyle(
            fontFamily: FontConstants.sofiaPro,
            fontSize: FontSize.s20,
            color: ColorManager.naturalDark,
          ),
        ),
        SizedBox(height: AppHeight.s16),
        Row(
          children: [
            CircleAvatar(
              radius: AppWidth.s28,
              backgroundColor: ColorManager.neutralGrey5,
              backgroundImage: const AssetImage(IconAssets.avatar),
            ),
            SizedBox(width: AppWidth.s16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Natalia Luca',
                    style: getBoldStyle(
                      fontSize: FontSize.s16,
                      color: ColorManager.naturalDark,
                    ),
                  ),
                  SizedBox(height: AppHeight.s4),
                  Text(
                    "I'm the author and recipe developer.",
                    style: getRegularStyle(
                      fontSize: FontSize.s14,
                      color: ColorManager.neutralGrey3,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
