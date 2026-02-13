import 'package:dawak/core/locator/service_locator.dart';
import 'package:dawak/core/routing/app_navigator.dart';
import 'package:dawak/core/storage/local_storage.dart';
import 'package:dawak/core/storage/shared_pref.dart';
import 'package:dawak/features/onboarding/constants/onboarding_constants.dart';
import 'package:flutter/material.dart';

class PageViewProvider extends ChangeNotifier {
  final PageController pageController = PageController();
  final LocalStorage localStorage = serviceLocator<SharedPref>();

  PageViewProvider();

  int _currentIndex = 0;
  int get currentIndex => _currentIndex;

  static const int lastPageIndex = OnboardingConstants.lastPageIndex;

  void goNextPage(BuildContext context) {
    if (!isFinalPage) {
      pageController.nextPage(
        duration: OnboardingConstants.animationDuration,
        curve: OnboardingConstants.animationCurve,
      );
    } else {
      setisfirstTimeKeyFalse();
      context.goSignIn(); // or goHome()
    }
  }

  bool get isFinalPage => _currentIndex == lastPageIndex;

  void updatePageIndex(int pageIndex) {
    _currentIndex = pageIndex;
    notifyListeners();
  }

  void setisfirstTimeKeyFalse() async {
    localStorage.setIsFirstTimeFalse();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
}
