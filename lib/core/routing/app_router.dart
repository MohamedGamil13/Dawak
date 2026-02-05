import 'package:dawak/core/routing/app_screens.dart';
import 'package:dawak/features/auth/presentation/views/sign_in_screen.dart';
import 'package:dawak/features/onboarding/presentation/screens/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: AppScreens.homeScreen,
      builder: (BuildContext context, GoRouterState state) {
        return const OnboardingScreen();
      },
    ),
    GoRoute(
      path: AppScreens.onboardingScreen,
      builder: (BuildContext context, GoRouterState state) {
        return const OnboardingScreen();
      },
    ),
    GoRoute(
      path: AppScreens.signInScreen,
      builder: (BuildContext context, GoRouterState state) {
        return const SignInScreen();
      },
    ),
  ],
);
