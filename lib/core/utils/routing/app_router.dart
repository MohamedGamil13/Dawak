import 'package:dawak/core/locator/service_locator.dart';
import 'package:dawak/core/utils/routing/app_screens.dart';
import 'package:dawak/core/utils/storage/local_storage.dart';
import 'package:dawak/features/auth/data/repos/auth_services.dart';
import 'package:dawak/features/auth/presentation/view_model/local_auth_cubit.dart';
import 'package:dawak/features/auth/presentation/views/biometric_auth_screen.dart';
import 'package:dawak/features/auth/presentation/views/forget_password_screen.dart';
import 'package:dawak/features/auth/presentation/views/sign_in_screen.dart';
import 'package:dawak/features/auth/presentation/views/sign_up_screen.dart';
import 'package:dawak/features/home/presentation/view/home_screen.dart';
import 'package:dawak/features/onboarding/presentation/screens/onboarding_screen.dart';
import 'package:dawak/features/onboarding/presentation/viewmodel/page_view_provider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

final GoRouter router = GoRouter(
  initialLocation: serviceLocator<LocalStorage>().isFirstTime()
      ? AppScreens.onboardingScreen
      : AppScreens.signInScreen,
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
      builder: (context, state) => BlocProvider(
        create: (context) => LocalAuthCubit(serviceLocator<AuthServicesRepo>()),
        child: const BiometricAuthScreen(),
      ),
    ),
    GoRoute(
      path: AppScreens.homeScreen,
      builder: (context, state) => const HomeScreen(),
    ),
  ],
);
