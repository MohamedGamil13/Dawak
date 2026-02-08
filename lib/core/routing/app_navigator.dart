import 'package:dawak/core/routing/app_screens.dart';
import 'package:go_router/go_router.dart';

class AppNavigator {
  final GoRouter _appRouter;

  AppNavigator(this._appRouter);
  void goOnborading() => _appRouter.go(AppScreens.onboardingScreen);
  void goSignIn() => _appRouter.go(AppScreens.signInScreen);
  void goHome() => _appRouter.go(AppScreens.homeScreen);
  void goSignUp() => _appRouter.go(AppScreens.signUpScreen);
  void goForgetPassword() => _appRouter.go(AppScreens.forgetPasswordScreen);
}
