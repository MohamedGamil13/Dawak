import 'package:dawak/core/theme/styles/app_styles.dart';
import 'package:dawak/core/widgets/custom_button.dart';
import 'package:dawak/features/onboarding/presentation/widgets/doctor_image.dart';
import 'package:dawak/generated/l10n.dart';
import 'package:flutter/material.dart';

class OnboardingScreen1 extends StatelessWidget {
  const OnboardingScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .center,
      children: [
        const DoctorImage(),
        Text(S.of(context).onBorading1solgan1, style: AppStyles.bold32black),
        Text(S.of(context).onBorading1solgan2, style: AppStyles.bold32black),
        const SizedBox(height: 20),
        Text(
          S.of(context).subTitle,
          style: AppStyles.w500gray20,
          textAlign: .center,
        ),
        const Spacer(flex: 3),
        CustomButton(onPressed: () {}, text: S.of(context).nextButton),
        const Spacer(),
      ],
    );
  }
}
