import 'package:dawak/features/onboarding/presentation/widgets/feature_items_row.dart';
import 'package:dawak/features/onboarding/presentation/widgets/medication_search_card.dart';
import 'package:flutter/material.dart';

class OnboardingScreen2 extends StatelessWidget {
  const OnboardingScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(children: [FeatureItemsRow(), MedicationSearchCard()]);
  }
}
