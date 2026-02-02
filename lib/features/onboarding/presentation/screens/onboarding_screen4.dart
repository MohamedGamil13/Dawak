import 'package:dawak/core/theme/styles/app_styles.dart';
import 'package:dawak/features/onboarding/presentation/widgets/animated_subscription_card.dart';
import 'package:dawak/features/onboarding/presentation/widgets/on_borading_layout.dart';
import 'package:dawak/generated/l10n.dart';
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
                  Text(
                    S.of(context).onBoardingScreen4Text5,
                    style: AppStyles.bold32black,
                    textAlign: TextAlign.center,
                  ),

                  Text(
                    S.of(context).onBoardingScreen4Text6,
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
