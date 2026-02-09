import 'package:dawak/core/routing/app_navigator.dart';
import 'package:dawak/features/onboarding/constants/onboarding_constants.dart';
import 'package:flutter/material.dart';

class PageViewProvider extends ChangeNotifier {
  final PageController pageController = PageController();

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
      context.goSignIn(); // or goHome()
    }
  }

  bool get isFinalPage => _currentIndex == lastPageIndex;

  void updatePageIndex(int pageIndex) {
    _currentIndex = pageIndex;
    notifyListeners();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
}
