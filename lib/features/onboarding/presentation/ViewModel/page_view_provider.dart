import 'package:flutter/material.dart';

class PageViewProvider extends ChangeNotifier {
  PageController pageController = PageController();
  int _currentIndex = 0;
  int get currentIndex => _currentIndex;
  void goNextPage() {
    if (!isFinalPage()) {
      pageController.nextPage(
        duration: Duration(milliseconds: 400),
        curve: Curves.easeInCubic,
      );
    }
    ChangeNotifier();
  }

  bool isFinalPage() {
    if (currentIndex != 3) {
      return false;
    }
    return true;
  }

  void updatePageIndex(int pageIndex) {
    _currentIndex = pageIndex;
    ChangeNotifier();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
}
