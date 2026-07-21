import 'package:flutter/material.dart';
import 'package:task3/core/resources/color_manager.dart';
import 'package:task3/core/resources/font_manager.dart';
import 'package:task3/core/resources/spacing_values_manager.dart';
import 'package:task3/core/resources/typography_manager.dart';

class OrContinueWithDivider extends StatelessWidget {
  const OrContinueWithDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Divider(color: ColorManager.neutralGrey4)),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: AppWidth.s12),
          child: Text(
            "or continue with",
            style: getRegularStyle(
              fontFamily: FontConstants.sofiaPro,
              fontSize: FontSize.s14,
              color: ColorManager.neutralGrey2,
            ),
          ),
        ),
        Expanded(child: Divider(color: ColorManager.neutralGrey4)),
      ],
    );
  }
}
