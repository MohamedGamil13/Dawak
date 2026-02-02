import 'package:dawak/features/onboarding/presentation/widgets/animated_subscription_card.dart';
import 'package:dawak/features/onboarding/presentation/widgets/on_borading_layout.dart';
import 'package:flutter/material.dart';

class OnboardingScreen4 extends StatelessWidget {
  const OnboardingScreen4({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: OnBoradingLayout(
        onboradingBody: Column(
          children: [Expanded(child: AnimatedSubscriptionCard())],
        ),
      ),
    );
  }
}
