import 'package:dawak/core/routing/app_navigator.dart';
import 'package:flutter/material.dart';

class PageViewProvider extends ChangeNotifier {
  final PageController pageController = PageController();
  final AppNavigator navigator;

  PageViewProvider({required this.navigator});

  int _currentIndex = 0;
  int get currentIndex => _currentIndex;

  static const int lastPageIndex = 3;

  void goNextPage() {
    if (!isFinalPage) {
      pageController.nextPage(
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeInCubic,
      );
    } else {
      navigator.goSignIn(); // or goHome()
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
