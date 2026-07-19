import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:task3/features/home/presentation/home_view.dart';
import 'package:task3/features/onboarding/presentation/onboarding_view.dart';

class Routes {
  static const String onboarding = '/onboarding';
  static const String home = '/home';
}

class AppNavigator {
  AppNavigator._();

  static final rootNK = GlobalKey<NavigatorState>();
  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(path: Routes.onboarding,
      builder: (context, state) => OnboardingView(),
      ),
      GoRoute(path: Routes.home,
      builder: (context, state) => HomeView(),
      ),
    ],
    navigatorKey: rootNK,
    initialLocation: Routes.onboarding,
    debugLogDiagnostics: true,
  );
}
