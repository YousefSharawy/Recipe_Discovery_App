import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:task3/features/onboarding/presentation/onboarding_view.dart';

class Routes {
  static const String onboarding = '/onboarding';
}

class AppNavigator {
  AppNavigator._();

  static final rootNK = GlobalKey<NavigatorState>();
  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(path: Routes.onboarding,
      builder: (context, state) => OnboardingView(),
      ),
    ],
    navigatorKey: rootNK,
    initialLocation: Routes.onboarding,
    debugLogDiagnostics: true,
  );
}
