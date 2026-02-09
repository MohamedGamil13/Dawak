import 'package:dawak/core/routing/app_screens.dart';
import 'package:dawak/features/auth/presentation/views/biometric_auth_screen.dart';
import 'package:dawak/features/auth/presentation/views/forget_password_screen.dart';
import 'package:dawak/features/auth/presentation/views/sign_in_screen.dart';
import 'package:dawak/features/auth/presentation/views/sign_up_screen.dart';
import 'package:dawak/features/onboarding/presentation/ViewModel/page_view_provider.dart';
import 'package:dawak/features/onboarding/presentation/screens/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

final GoRouter router = GoRouter(
  initialLocation: AppScreens.onboardingScreen,
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
        return ChangeNotifierProvider(
          create: (BuildContext context) => PageViewProvider(),
          child: const OnboardingScreen(),
        );
      },
    ),
    GoRoute(
      path: AppScreens.signInScreen,
      builder: (BuildContext context, GoRouterState state) {
        return const SignInScreen();
      },
    ),
    GoRoute(
      path: AppScreens.signUpScreen,
      builder: (BuildContext context, GoRouterState state) {
        return const SignUpScreen();
      },
    ),
    GoRoute(
      path: AppScreens.forgetPasswordScreen,
      builder: (BuildContext context, GoRouterState state) {
        return const ForgetPasswordScreen();
      },
    ),
    GoRoute(
      path: AppScreens.biometricScreen,
      builder: (BuildContext context, GoRouterState state) {
        return const BiometricAuthScreen();
      },
    ),
  ],
);
