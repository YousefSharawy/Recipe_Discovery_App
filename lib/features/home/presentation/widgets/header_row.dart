import 'package:flutter/material.dart';

import '../../../../core/resources/color_manager.dart';
import '../../../../core/resources/font_manager.dart';
import '../../../../core/resources/typography_manager.dart';

class HeaderRow extends StatelessWidget {
  const HeaderRow(
  
    {super.key, required this.header, required this.onTap,text,this.buttonText = "See All"});
  final String header;
  final String buttonText;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          header,
          style: getExtraBoldStyle(
            fontFamily: FontConstants.sofiaPro,
            fontSize: FontSize.s20,
            color: ColorManager.naturalDark,
          ),
        ),
        Spacer(),
        TextButton(
          onPressed: () {},
          child: Text(
            buttonText,
            style: getExtraBoldStyle(
              fontFamily: FontConstants.sofiaPro,
              fontSize: FontSize.s14,
              color: ColorManager.brandSecondary,
            ),
          ),
        ),
      ],
    );
  }
}
