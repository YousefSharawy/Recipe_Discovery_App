import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task3/core/resources/assets_manager.dart';
import 'package:task3/core/resources/color_manager.dart';
import 'package:task3/core/resources/font_manager.dart';
import 'package:task3/core/resources/spacing_values_manager.dart';
import 'package:task3/core/resources/typography_manager.dart';
import 'package:task3/core/widgets/custom_elevated_button.dart';

class SocialLoginRow extends StatelessWidget {
  const SocialLoginRow({super.key, required this.horizontalPadding});
  final double horizontalPadding;

  @override
  Widget build(BuildContext context) {
    ;
    return Row(
      children: [
        _SocialButton(title: "Google", icon: IconAssets.google),
        SizedBox(width: AppWidth.s16),
        _SocialButton(title: "Apple", icon: IconAssets.apple),
      ],
    );
  }
}

class _SocialButton extends StatelessWidget {
  const _SocialButton({required this.title, required this.icon});
  final String title;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return CustomElevatedButton(
      title: title,
      width: AppWidth.s155,
      height: AppHeight.s56,
      iconPath: icon,
      backGroundColor: ColorManager.neutralGrey5,
      onPress: () {},
    );
  }
}
