import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task3/core/routes.dart';

class Bootstrap extends StatelessWidget {
  const Bootstrap({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      ensureScreenSize: true,
      designSize: Size(375, 812),
      builder: (context, child) {
        return MaterialApp.router(
          routerConfig: AppNavigator.router,
          debugShowCheckedModeBanner: false);
      },
    );
  }
}
