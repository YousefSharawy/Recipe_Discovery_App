import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:task3/core/resources/color_manager.dart';
import 'package:task3/core/resources/font_manager.dart';
import 'package:task3/core/resources/spacing_values_manager.dart';
import 'package:task3/core/resources/typography_manager.dart';
import 'package:task3/core/routes.dart';
import 'package:task3/core/validator/validators.dart';
import 'package:task3/core/widgets/custom_elevated_button.dart';
import 'package:task3/core/widgets/custom_text_form_field.dart';
import 'package:task3/features/auth/presentation/controller/auth_controller.dart';
import 'package:task3/features/auth/presentation/widgets/or_continue_with_divider.dart';
import 'package:task3/features/auth/presentation/widgets/social_login_row.dart';

import '../controller/auth_states.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final ac = context.read<AuthController>();

    return Scaffold(
      backgroundColor: ColorManager.white,
      appBar: AppBar(
        backgroundColor: ColorManager.white,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            if (context.canPop()) {
              context.pop();
            } else {
              context.go(Routes.onboarding);
            }
          },
          icon: Icon(
            Icons.arrow_back_ios_new,
            size: AppSize.s20,
            color: ColorManager.naturalDark,
          ),
        ),
        title: Text(
          "Login",
          style: getExtraBoldStyle(
            fontFamily: FontConstants.sofiaPro,
            fontSize: FontSize.s24,
            color: ColorManager.naturalDark,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: AppWidth.s16),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: AppHeight.s20),
                Text(
                  "Welcome Back",
                  style: getExtraBoldStyle(
                    fontFamily: FontConstants.sofiaPro,
                    fontSize: FontSize.s28,
                    color: ColorManager.naturalDark,
                  ),
                ),
                SizedBox(height: AppHeight.s8),
                Text(
                  "Sign in to keep cooking your favourite recipes.",
                  style: getRegularStyle(
                    fontFamily: FontConstants.sofiaPro,
                    fontSize: FontSize.s16,
                    color: ColorManager.neutralGrey2,
                  ),
                ),
                SizedBox(height: AppHeight.s32),
                CustomTextFormField(
                  label: "Email Address",
                  hint: "you@email.com",
                  controller: emailController,
                  prefixIcon: Icons.mail_outline,
                  keyboardType: TextInputType.emailAddress,
                  validator: Validators.validateEmail,
                ),
                SizedBox(height: AppHeight.s20),
                CustomTextFormField(
                  label: "Password",
                  hint: "Enter your password",
                  controller: passwordController,
                  prefixIcon: Icons.lock_outline,
                  isPassword: true,
                  validator: Validators.validatePassword,
                ),
                SizedBox(height: AppHeight.s8),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Forgot Password?",
                      style: getSemiBoldStyle(
                        fontFamily: FontConstants.sofiaPro,
                        fontSize: FontSize.s14,
                        color: ColorManager.brandSecondary,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: AppHeight.s24),
                CustomElevatedButton(
                  title: "Login",
                  textStyle: getBoldStyle(
                    color: ColorManager.white,
                    fontSize: FontSize.s16,
                    fontFamily: FontConstants.sofiaPro,
                  ),
                  backGroundColor: ColorManager.brandSecondaryLight,
                  onPress: () async{
                    if (formKey.currentState!.validate()) {
                     await ac.login(
                        userName: emailController.text,
                        password: passwordController.text,
                      );
                      if (!context.mounted) return;
                      final state = ac.state;
                      if (state is AuthSuccess) {
                        context.go(Routes.home);
                      } else if (state is AuthError) {
                        ScaffoldMessenger.of(
                          context,
                        ).showSnackBar(SnackBar(content: Text(state.message)));
                      }
                    }
                  },
                ),
                SizedBox(height: AppHeight.s24),
                const OrContinueWithDivider(),
                SizedBox(height: AppHeight.s24),
                SocialLoginRow(horizontalPadding: AppWidth.s24),
                SizedBox(height: AppHeight.s16),
                Align(
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Don't have an account?",
                        style: getRegularStyle(
                          fontFamily: FontConstants.sofiaPro,
                          fontSize: FontSize.s15,
                          color: ColorManager.neutralGrey2,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Sign Up",
                          style: getBoldStyle(
                            fontFamily: FontConstants.sofiaPro,
                            fontSize: FontSize.s15,
                            color: ColorManager.brandSecondary,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: AppHeight.s16),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
