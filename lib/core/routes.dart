import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import "package:provider/provider.dart";
import 'package:task3/core/base/nav_bar.dart';
import 'package:task3/core/injection.dart';
import 'package:task3/features/auth/presentation/controller/auth_controller.dart';
import 'package:task3/features/auth/presentation/login/login_view.dart';
import 'package:task3/features/cart/presentation/controller/cart_controller.dart';
import 'package:task3/features/home/presentation/controller/home_controller.dart';
import 'package:task3/features/home/presentation/home_view.dart';
import 'package:task3/features/onboarding/presentation/onboarding_view.dart';
import 'package:task3/features/profile/profile_view.dart';
import 'package:task3/features/search/presentation/search_view.dart';

class Routes {
  static const String onboarding = '/onboarding';
  static const String home = '/home';
  static const String login = '/login';
  static const String search = '/search';
  static const String profile = '/profile';
}

class AppNavigator {
  AppNavigator._();

  static final rootNK = GlobalKey<NavigatorState>();
  static GoRouter router(String initialLocation) => GoRouter(
    initialLocation: initialLocation,
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
                  final controller = getIt<HomeController>();
                  WidgetsBinding.instance.addPostFrameCallback((_) {
                    controller.getAllRecipes();
                    controller.getRecipesByMealType(mealType: "snack");
                  });
                  return MultiProvider(
                    providers: [
                      ChangeNotifierProvider.value(value: controller),
                      ChangeNotifierProvider.value(
                        value: getIt<AuthController>(),
                      ),
                    ],
                    child: HomeView(),
                  );
                },
              ),
            ],
          ),
          StatefulShellBranch(
            routes: <RouteBase>[
              GoRoute(
                path: Routes.search,
                builder: (BuildContext context, GoRouterState state) {
                  final controller = getIt<HomeController>();
                  WidgetsBinding.instance.addPostFrameCallback(
                    (_) => controller.getAllRecipes(),
                  );
                  return ChangeNotifierProvider.value(
                    value: controller,
                    child: SearchView(),
                  );
                },
              ),
            ],
          ),
          StatefulShellBranch(
            routes: <RouteBase>[
              GoRoute(
                path: '/not',
                builder: (context, state) =>
                    const Scaffold(body: Center(child: Text('notifications'))),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: <RouteBase>[
              GoRoute(
                path: Routes.profile,
                builder: (context, state) {
                  final cartController = getIt<CartController>();
                  final userId = getIt<AuthController>().user?.id;
                  if (userId != null) {
                    WidgetsBinding.instance.addPostFrameCallback(
                      (_) => cartController.getUserCart(userId),
                    );
                  }
                  return MultiProvider(
                    providers: [
                      ChangeNotifierProvider.value(value: cartController),
                      ChangeNotifierProvider.value(
                        value: getIt<AuthController>(),
                      ),
                    ],
                    child: ProfileView(),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    ],
    navigatorKey: rootNK,
    // debugLogDiagnostics: true,
  );
}
