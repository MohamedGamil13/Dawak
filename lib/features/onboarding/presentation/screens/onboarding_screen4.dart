import 'package:dawak/core/widgets/custom_listtile.dart';
import 'package:dawak/features/onboarding/presentation/widgets/on_borading_layout.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class OnboardingScreen4 extends StatelessWidget {
  const OnboardingScreen4({super.key});

  @override
  Widget build(BuildContext context) {
    return const OnBoradingLayout(
      onboradingBody: Column(
        children: [
          CustomListtile(
            icon: FontAwesomeIcons.accusoft,
            title: "Remindar",
            subtitle: "Time for your morning dose",
          ),
        ],
      ),
    );
  }
}
