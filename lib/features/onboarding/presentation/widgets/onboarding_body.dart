import 'package:dawak/features/onboarding/presentation/screens/onboarding_screen1.dart';
import 'package:dawak/features/onboarding/presentation/screens/onboarding_screen2.dart';
import 'package:dawak/features/onboarding/presentation/screens/onboarding_screen3.dart';
import 'package:dawak/features/onboarding/presentation/screens/onboarding_screen4.dart';
import 'package:flutter/material.dart';

class OnboardingBody extends StatefulWidget {
  const OnboardingBody({super.key});

  @override
  State<OnboardingBody> createState() => _OnboardingBodyState();
}

class _OnboardingBodyState extends State<OnboardingBody> {
  // late PageController pageController;
  // @override
  // void initState() {
  //   pageController = PageController();
  //   super.initState();
  // }

  // @override
  // void dispose() {
  //   pageController.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(26),
        child: PageView(
          // controller: pageController,
          children: [
            OnboardingScreen1(),
            OnboardingScreen2(),
            OnboardingScreen3(),
            OnboardingScreen4(),
          ],
        ),
      ),
    );
  }
}
