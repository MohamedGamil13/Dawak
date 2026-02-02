import 'package:dawak/core/theme/styles/app_styles.dart';
import 'package:dawak/features/onboarding/presentation/widgets/animated_subscription_card.dart';
import 'package:dawak/features/onboarding/presentation/widgets/on_borading_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingScreen4 extends StatelessWidget {
  const OnboardingScreen4({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: OnBoradingLayout(
        onboradingBody: Column(
          children: [
            const Expanded(child: AnimatedSubscriptionCard()),
            SizedBox(height: 220.h),
            Expanded(
              child: Column(
                children: [
                  const Text(
                    'Never Miss a Dose',
                    style: AppStyles.bold32black,
                    textAlign: TextAlign.center,
                  ),

                  Text(
                    ' Set automatic reminders for your medications and subscribe to chronic care plans for seamless, doorstep refills. ',
                    style: AppStyles.w500gray20,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
