import 'package:dawak/core/routing/app_screens.dart';
import 'package:go_router/go_router.dart';

abstract class AppNavigator {
  final GoRouter _appRouter;

  AppNavigator({required GoRouter appRouter}) : _appRouter = appRouter;
  void goOnborading() => _appRouter.go(AppScreens.onboardingScreen);
  void gosignIn() => _appRouter.go(AppScreens.signInScreen);
  void goHome() => _appRouter.go(AppScreens.homeScreen);
}
