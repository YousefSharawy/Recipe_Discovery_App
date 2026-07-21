import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/resources/color_manager.dart';
import '../../../../core/resources/font_manager.dart';
import '../../../../core/resources/spacing_values_manager.dart';
import '../../../../core/resources/typography_manager.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    required this.title,
    this.height,
    this.width,
    required this.onPress,
    this.backGroundColor,
    this.titleWidget,
    this.isLoading = false,
    this.groub,
    this.value,
    this.iconPath,
    this.buttonRadius,
    this.textStyle,
    this.borderColor,
    this.textColor
  });
  final String title;
  final double? height;
  final double? width;
  final VoidCallback onPress;
  final Color? backGroundColor;
  final Widget? titleWidget;
  final bool isLoading;
  final dynamic groub;
  final dynamic value;
  final String? iconPath;
  final Color? borderColor;
  final Color? textColor;

  final TextStyle? textStyle;
  final double? buttonRadius;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        width: width ?? 1.sw,
        height: height ?? AppHeight.s54,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: backGroundColor ?? ColorManager.brandPrimary,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppRadius.s16)
            ),
            fixedSize: Size(width ?? 1.sw, height ?? AppHeight.s54),
          ),
          onPressed: onPress,
          child: isLoading
              ? SizedBox(
                  width: AppHeight.s24,
                  height: AppHeight.s24,
                  child: CircularProgressIndicator(
                    color: ColorManager.white,
                    strokeWidth: 2.5,
                  ),
                )
              : titleWidget ??
                    FittedBox(
                      child: Row(
                        children: [
                          if (iconPath != null) ...[
                            SvgPicture.asset(
                              iconPath!,
                              width: AppWidth.s20,
                              height: AppHeight.s20,
                            ),
                          ],
                          if (iconPath != null) SizedBox(width: AppWidth.s10),
                          Center(
                            child: Text(
                              title,
                              style:
                                  textStyle ??
                                  getBoldStyle(
                                    fontFamily: FontConstants.sofiaPro,
                                    fontSize: FontSize.s16,
                                    color: textColor ?? ColorManager.naturalDark,
                                    letterSpacing: 1.sp,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
        ),
      ),
    );
  }
}