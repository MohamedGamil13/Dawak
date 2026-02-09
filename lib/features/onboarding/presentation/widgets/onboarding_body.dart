import 'package:dawak/features/onboarding/presentation/screens/onboarding_screen1.dart';
import 'package:dawak/features/onboarding/presentation/screens/onboarding_screen2.dart';
import 'package:dawak/features/onboarding/presentation/screens/onboarding_screen3.dart';
import 'package:dawak/features/onboarding/presentation/screens/onboarding_screen4.dart';
import 'package:dawak/features/onboarding/presentation/viewmodel/page_view_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class OnboardingBody extends StatelessWidget {
  const OnboardingBody({super.key});

  static const List<Widget> _pages = [
    OnboardingScreen1(),
    OnboardingScreen2(),
    OnboardingScreen3(),
    OnboardingScreen4(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(26),
        child: Consumer<PageViewProvider>(
          builder: (context, provider, child) {
            return PageView.builder(
              physics: const NeverScrollableScrollPhysics(),
              controller: provider.pageController,
              onPageChanged: provider.updatePageIndex,
              itemCount: _pages.length,
              itemBuilder: (context, index) => _pages[index],
            );
          },
        ),
      ),
    );
  }
}
