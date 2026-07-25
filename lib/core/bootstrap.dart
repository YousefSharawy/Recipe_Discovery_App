import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:task3/core/routes.dart';

class Bootstrap extends StatefulWidget {
  final bool isloggedIn;
  const Bootstrap({super.key, required this.isloggedIn});

  @override
  State<Bootstrap> createState() => _BootstrapState();
}

class _BootstrapState extends State<Bootstrap> {
  late final GoRouter _router = AppNavigator.router(
    widget.isloggedIn ? Routes.home : Routes.onboarding,
  );

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      ensureScreenSize: true,
      designSize: const Size(375, 812),
      builder: (context, child) {
        return MaterialApp.router(
          routerConfig: _router,
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}
