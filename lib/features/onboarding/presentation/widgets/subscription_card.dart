import 'package:dawak/core/theme/colors/app_colors.dart';
import 'package:dawak/core/theme/styles/app_styles.dart';
import 'package:dawak/core/widgets/sqaure_icon.dart';
import 'package:dawak/core/widgets/text_container.dart';
import 'package:flutter/material.dart';

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
                SqaureIcon(),
                TextContainer(text: "Active Subscription"),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Column(
                crossAxisAlignment: .start,
                children: [
                  Text('Lisinopril 10mg', style: AppStyles.bold24black),
                  Text('Daily, 8:00 AM'),
                ],
              ),
            ),
            Divider(color: AppColors.grayborder, thickness: 1.5),
          ],
        ),
      ),
    );
  }
}
