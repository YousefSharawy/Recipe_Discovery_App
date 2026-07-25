import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task3/core/resources/assets_manager.dart';
import 'package:task3/core/resources/font_manager.dart';
import 'package:task3/core/resources/spacing_values_manager.dart';
import 'package:task3/core/resources/typography_manager.dart';
import 'package:task3/features/auth/presentation/controller/auth_controller.dart';
import 'package:task3/features/profile/widgets/user_profile_heder.dart';

import '../../core/resources/color_manager.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
     final ac = context.read<AuthController>();
    final user = ac.user;
  if (user == null) {
    return const Scaffold(body: Center(child: CircularProgressIndicator()));
  }
    return Scaffold(
      backgroundColor: ColorManager.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppWidth.s24),
          child: Column(
            children: [
              Row(
                children: [
                  Text("Account",style: getBoldStyle(
                    fontFamily: FontConstants.sofiaPro,fontSize: FontSize.s24,
                    color: ColorManager.brandPrimary
                  ),),
                  Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset(IconAssets.setting,width: AppWidth.s24,height: AppHeight.s24,),
                  ),
                ],
              ),
              SizedBox(height: AppHeight.s26,),
              UserProfileHeder(userEntity: user,),
            ],
          ),
        ),
      ),
    );
  }
}
