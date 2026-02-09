import 'package:dawak/core/routing/app_screens.dart';
import 'package:dawak/features/auth/presentation/views/biometric_auth_screen.dart';
import 'package:dawak/features/auth/presentation/views/forget_password_screen.dart';
import 'package:dawak/features/auth/presentation/views/sign_in_screen.dart';
import 'package:dawak/features/auth/presentation/views/sign_up_screen.dart';
import 'package:dawak/features/onboarding/presentation/screens/onboarding_screen.dart';
import 'package:dawak/features/onboarding/presentation/viewmodel/page_view_provider.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

final GoRouter router = GoRouter(
  initialLocation: AppScreens.onboardingScreen,
  routes: <RouteBase>[
    GoRoute(
      path: AppScreens.onboardingScreen,
      builder: (context, state) {
        return ChangeNotifierProvider(
          create: (_) => PageViewProvider(),
          child: const OnboardingScreen(),
        );
      },
    ),

    GoRoute(
      path: AppScreens.signInScreen,
      builder: (context, state) => const SignInScreen(),
    ),

    GoRoute(
      path: AppScreens.signUpScreen,
      builder: (context, state) => const SignUpScreen(),
    ),

    GoRoute(
      path: AppScreens.forgetPasswordScreen,
      builder: (context, state) => const ForgetPasswordScreen(),
    ),

    GoRoute(
      path: AppScreens.biometricScreen,
      builder: (context, state) => const BiometricAuthScreen(),
    ),
    GoRoute(
      path: AppScreens.homeScreen,
      builder: (context, state) => const OnboardingScreen(),
    ),
  ],
);
