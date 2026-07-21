import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:task3/core/resources/assets_manager.dart';
import 'package:task3/core/resources/color_manager.dart';
import 'package:task3/core/resources/font_manager.dart';
import 'package:task3/core/resources/typography_manager.dart';
import 'package:task3/core/routes.dart';
import 'package:task3/core/widgets/custom_elevated_button.dart';

import '../../../core/resources/spacing_values_manager.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            ImageAssets.onboarding,
            width: double.infinity,
            height: double.infinity,
          ),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: AppWidth.s24),
              child: Column(
                children: [
                  Align(
                    alignment: .centerRight,
                    child: TextButton(
                      onPressed: () {
                        context.go(Routes.login);
                      },
                      child: Text(
                        "Later",
                        style: getExtraBoldStyle(
                          color: ColorManager.neutralGrey4,
                          fontSize: FontSize.s18,
                          fontFamily: FontConstants.sofiaPro,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: AppHeight.s85),
                  Image.asset(
                    ImageAssets.onboardingStyling,
                    width: double.infinity,
                    height: AppHeight.s310,
                  ),
                  SizedBox(height: AppHeight.s65),
                  Text(
                    "Help your path to health\n\t\t\tgoals with happiness",
                    style: getExtraBoldStyle(
                      color: ColorManager.white,
                      fontSize: FontSize.s28,
                      fontFamily: FontConstants.sofiaPro,
                    ),
                  ),
                  SizedBox(height: AppHeight.s24),
                  CustomElevatedButton(
                    title: "Login",
                    textStyle: getBoldStyle(
                      color: ColorManager.white,
                      fontFamily: FontConstants.sofiaPro,
                      fontSize: AppHeight.s16,
                    ),
                    onPress: () {
                      context.go(Routes.login);
                    },
                  ),
                  TextButton(
                    onPressed: () {
                      context.go(Routes.login);
                    },
                    child: Text(
                      "Create New Account",
                      style: getBoldStyle(
                        color: ColorManager.white,
                        fontSize: FontSize.s16,
                        fontFamily: FontConstants.sofiaPro,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
