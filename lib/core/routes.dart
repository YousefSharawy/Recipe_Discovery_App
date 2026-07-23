import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import "package:provider/provider.dart";
import 'package:task3/core/base/nav_bar.dart';
import 'package:task3/core/injection.dart';
import 'package:task3/features/auth/presentation/controller/auth_controller.dart';
import 'package:task3/features/auth/presentation/login/login_view.dart';
import 'package:task3/features/home/presentation/controller/home_controller.dart';
import 'package:task3/features/home/presentation/home_view.dart';
import 'package:task3/features/onboarding/presentation/onboarding_view.dart';

class Routes {
  static const String onboarding = '/onboarding';
  static const String home = '/home';
  static const String login = '/login';
}

class AppNavigator {
  AppNavigator._();

  static final rootNK = GlobalKey<NavigatorState>();
  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: Routes.onboarding,
        builder: (context, state) => OnboardingView(),
      ),
      GoRoute(
        path: Routes.login,
        builder: (context, state) {
          return ChangeNotifierProvider.value(
            value: getIt<AuthController>(),

            child: LoginView(),
          );
        },
      ),
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          return ScaffoldWithNavBar(navigationShell: navigationShell);
        },
        branches: <StatefulShellBranch>[
          StatefulShellBranch(
            routes: <RouteBase>[
              GoRoute(
                path: Routes.home,
                builder: (BuildContext context, GoRouterState state) {

                  return ChangeNotifierProvider.value(
                    value: getIt<HomeController>()..getAllRecipes(),
                    child: HomeView());
                },
              ),
            ],
          ),
          StatefulShellBranch(
            routes: <RouteBase>[
              GoRoute(
                path: '/search',
                builder: (context, state) =>
                    const Scaffold(body: Center(child: Text('Search'))),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: <RouteBase>[
              GoRoute(
                path: '/not',
                builder: (context, state) =>
                    const Scaffold(body: Center(child: Text('Saved'))),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: <RouteBase>[
              GoRoute(
                path: '/profile',
                builder: (context, state) =>
                    const Scaffold(body: Center(child: Text('Profile'))),
              ),
            ],
          ),
        ],
      ),
    ],
    navigatorKey: rootNK,
    initialLocation: Routes.onboarding,
    debugLogDiagnostics: true,
  );
}
