import 'package:flutter/material.dart';
import 'package:task3/core/resources/assets_manager.dart';
import 'package:task3/core/resources/color_manager.dart';
import 'package:task3/core/resources/font_manager.dart';
import 'package:task3/core/resources/spacing_values_manager.dart';
import 'package:task3/core/resources/typography_manager.dart';

class WelcomnColumn extends StatelessWidget {
  const WelcomnColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .start,
      children: [
        Row(children: [Image.asset(IconAssets.sun),
        SizedBox(width: AppWidth.s4,),
         Text("Good Morning",style: getRegularStyle(
          fontFamily: FontConstants.sofiaPro,fontSize: FontSize.s14,color: ColorManager.naturalDark
         ),)]),
        Text("Alena Sabyan",style: getExtraBoldStyle(
          fontFamily: FontConstants.sofiaPro,fontSize: FontSize.s24,color: ColorManager.naturalDark
        ),),
      ],
    );
  }
}
