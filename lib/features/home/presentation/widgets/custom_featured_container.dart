import 'package:flutter/material.dart';
import 'package:task3/core/resources/assets_manager.dart';
import 'package:task3/core/resources/color_manager.dart';
import 'package:task3/core/resources/font_manager.dart';
import 'package:task3/core/resources/typography_manager.dart';

import '../../../../core/resources/spacing_values_manager.dart';

class CustomFeaturedContainer extends StatelessWidget {
  const CustomFeaturedContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.only(end: AppWidth.s16),
      width: AppWidth.s264,
      height: AppHeight.s172,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppRadius.s24),
      ),
      child: Stack(
        children: [
          Image.asset(ImageAssets.featuredCard),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: AppWidth.s16,
              vertical: AppHeight.s16,
            ),
            child: Column(
              crossAxisAlignment: .start,
              mainAxisAlignment: .center,
              children: [
                Spacer(),
                Text(
                  "Asian white noodle\nwith extra seafood",
                  style: getBoldStyle(
                    fontFamily: FontConstants.sofiaPro,
                    color: ColorManager.white,
                    fontSize: FontSize.s18,
                  ),
                ),
                SizedBox(height: AppHeight.s8),
                Row(
                  children: [
                    Image.asset(IconAssets.avatar),
                    SizedBox(width: AppWidth.s8),
                    Text(
                      "James Spader",
                      style: getRegularStyle(
                        fontFamily: FontConstants.sofiaPro,
                        color: ColorManager.white,
                        fontSize: FontSize.s14,
                      ),
                    ),
                    Spacer(),
                    Image.asset(IconAssets.time),
                    SizedBox(width: AppWidth.s4),
                    Text(
                      "20 mins",
                      style: getRegularStyle(
                        fontFamily: FontConstants.sofiaPro,
                        color: ColorManager.white,
                        fontSize: FontSize.s14,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
