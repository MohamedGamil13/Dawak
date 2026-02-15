import 'package:dawak/core/utils/theme/colors/app_colors.dart';
import 'package:dawak/core/utils/theme/styles/app_styles.dart';
import 'package:dawak/core/widgets/sqaure_icon.dart';
import 'package:dawak/core/widgets/text_container.dart';
import 'package:dawak/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SubscriptionCard extends StatelessWidget {
  const SubscriptionCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.white,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: .start,
          children: [
            Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                const SqaureIcon(icon: FontAwesomeIcons.pills, dimensions: 50),
                TextContainer(text: S.of(context).onBoardingScreen4Text7),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Column(
                crossAxisAlignment: .start,
                children: [
                  Text(
                    S.of(context).onBoardingScreen4Text8,
                    style: AppStyles.bold24black,
                  ),
                  Text(S.of(context).onBoardingScreen4Text9),
                ],
              ),
            ),
            const Divider(color: AppColors.grayborder, thickness: 1.5),
          ],
        ),
      ),
    );
  }
}
