import 'package:flutter/material.dart';
import 'package:task3/core/resources/color_manager.dart';
import 'package:task3/core/resources/font_manager.dart';
import 'package:task3/core/resources/spacing_values_manager.dart';
import 'package:task3/core/resources/typography_manager.dart';

class InstructionsTab extends StatelessWidget {
  const InstructionsTab({super.key, required this.instructions});

  final List<String> instructions;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: instructions.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.only(bottom: AppHeight.s16),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: AppWidth.s24,
                height: AppHeight.s24,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: ColorManager.brandSecondary,
                ),
                child: Text(
                  '${index + 1}',
                  style: getBoldStyle(
                    fontSize: FontSize.s14,
                    color: ColorManager.white,
                  ),
                ),
              ),
              SizedBox(width: AppWidth.s12),
              Expanded(
                child: Text(
                  instructions[index],
                  style: getRegularStyle(
                    fontSize: FontSize.s16,
                    color: ColorManager.naturalDark,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
