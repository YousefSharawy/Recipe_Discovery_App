import 'package:flutter/material.dart';
import 'package:task3/core/resources/spacing_values_manager.dart';

class StepButton extends StatelessWidget {
  const StepButton({
    super.key,
    required this.icon,
    required this.borderColor,
    required this.iconColor,
    required this.onTap,
  });

  final IconData icon;
  final Color borderColor;
  final Color iconColor;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: AppWidth.s28,
        height: AppHeight.s28,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppRadius.s8),
          border: Border.all(color: borderColor),
        ),
        child: Icon(icon, size: AppWidth.s16, color: iconColor),
      ),
    );
  }
}
