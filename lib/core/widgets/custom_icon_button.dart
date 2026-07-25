import 'package:flutter/material.dart';
import 'package:task3/core/resources/color_manager.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    super.key,
    required this.icon,
    this.width,
    this.height,
    this.iconWidth,
    this.iconHeight,
    this.backgroundColor = ColorManager.white,
    this.onTap,
  });

  final String icon;
  final double? width;
  final double? height;
  final double? iconWidth;
  final double? iconHeight;
  final Color backgroundColor;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(12),
        ),
        alignment: Alignment.center,
        child: Image.asset(
          icon,
          width: iconWidth,
          height: iconHeight,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
