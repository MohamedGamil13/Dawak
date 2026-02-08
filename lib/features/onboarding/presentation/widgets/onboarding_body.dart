import 'package:dawak/features/onboarding/presentation/ViewModel/page_view_provider.dart';
import 'package:dawak/features/onboarding/presentation/screens/onboarding_screen1.dart';
import 'package:dawak/features/onboarding/presentation/screens/onboarding_screen2.dart';
import 'package:dawak/features/onboarding/presentation/screens/onboarding_screen3.dart';
import 'package:dawak/features/onboarding/presentation/screens/onboarding_screen4.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class OnboardingBody extends StatelessWidget {
  const OnboardingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(26),
        child: Consumer<PageViewProvider>(
          builder: (BuildContext context, value, Widget? child) {
            return PageView(
              physics: const NeverScrollableScrollPhysics(),
              controller: value.pageController,
              onPageChanged: (index) {
                value.updatePageIndex(index);
              },
              children: const [
                OnboardingScreen1(),
                OnboardingScreen2(),
                OnboardingScreen3(),
                OnboardingScreen4(),
              ],
            );
          },
        ),
      ),
    );
  }
}
