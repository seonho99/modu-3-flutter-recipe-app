import 'package:go_router/go_router.dart';
import 'package:recipe_app/core/routing/routes.dart';
import 'package:recipe_app/presentation/home/home_screen.dart';
import 'package:recipe_app/presentation/sign_up/sign_up_screen.dart';
import 'package:recipe_app/presentation/splash/splash_screen.dart';

import '../../presentation/sign_in/sign_in_screen.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) {
        return SplashScreen();
      },
      routes: [
        GoRoute(
          path: Routes.signUp,
          builder: (context, state) {
            return SignUpScreen();
          },
          routes: [
            GoRoute(
              path: Routes.home,
              builder: (context, state) {
                return HomeScreen();
              },
            ),
          ],
        ),
        GoRoute(
          path: Routes.signIn,
          builder: (context, state) {
            return SignInScreen();
          },
        ),
      ],
    ),
  ],
);
