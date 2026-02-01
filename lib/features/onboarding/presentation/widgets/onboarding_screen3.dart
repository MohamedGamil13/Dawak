import 'package:dawak/core/theme/styles/app_styles.dart';
import 'package:dawak/features/onboarding/presentation/widgets/chat_preview_card.dart';
import 'package:dawak/features/onboarding/presentation/widgets/on_borading_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingScreen3 extends StatelessWidget {
  const OnboardingScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    return OnBoradingLayout(
      onboradingBody: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const ConsultationChatCard(),
          SizedBox(height: 30.h),

          const Text(
            'Consult a Pharmacist',
            style: AppStyles.bold32black,
            textAlign: TextAlign.center,
          ),
          const Text(
            'Anytime',
            style: AppStyles.bold32black,
            textAlign: TextAlign.center,
          ),

          SizedBox(height: 12.h),

          Text(
            'Chat with our licensed pharmacists for medical advice or '
            'quickly upload your prescription to get started.',
            style: AppStyles.w500gray20,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
