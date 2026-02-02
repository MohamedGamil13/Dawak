import 'package:dawak/core/theme/colors/app_colors.dart';
import 'package:dawak/core/widgets/sqaure_icon.dart';
import 'package:dawak/core/widgets/text_container.dart';
import 'package:flutter/material.dart';

class SubscriptionCard extends StatelessWidget {
  const SubscriptionCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.white,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                SqaureIcon(),
                TextContainer(text: "Active Subscription"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
