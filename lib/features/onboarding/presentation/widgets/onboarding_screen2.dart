import 'package:dawak/core/theme/styles/app_styles.dart';
import 'package:dawak/features/onboarding/presentation/widgets/feature_items_row.dart';
import 'package:dawak/features/onboarding/presentation/widgets/medication_search_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingScreen2 extends StatelessWidget {
  const OnboardingScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const FeatureItemsRow(),
        SizedBox(height: 30.h),
        const MedicationSearchCard(),
        Text('Find and order', style: AppStyles.bold32black),
        Text('Medicines Easily', style: AppStyles.bold32black),
        Text(
          'Search from over 10,000+ certified medications and healthcare products. Order in seconds and track your delivery.',
          style: AppStyles.w500gray20,
          textAlign: .center,
        ),
      ],
    );
  }
}
