import 'package:dawak/core/utils/routing/app_screens.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

extension AppNavigator on BuildContext {
  void goOnborading() => go(AppScreens.onboardingScreen);
  void goSignIn() => go(AppScreens.signInScreen);
  void goHome() => go(AppScreens.homeScreen);
  void goSignUp() => go(AppScreens.signUpScreen);
  void goForgetPassword() => go(AppScreens.forgetPasswordScreen);
  void goBiometric() => go(AppScreens.biometricScreen);
  void pushSignUp() => push(AppScreens.signUpScreen);
  void pushForgetPassword() => push(AppScreens.forgetPasswordScreen);
  void goBack() => pop();
}
