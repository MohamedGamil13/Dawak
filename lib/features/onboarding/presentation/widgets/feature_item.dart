import 'package:dawak/core/theme/colors/app_colors.dart';
import 'package:dawak/core/theme/styles/app_styles.dart';
import 'package:flutter/material.dart';

class FeatureItem extends StatelessWidget {
  const FeatureItem({super.key, required this.type});
  final String type;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: AppColors.white,
        border: Border.all(color: AppColors.grayborder, width: 1.5),
      ),

      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
        child: Row(
          mainAxisSize: .min,
          children: [
            const Icon(Icons.abc, color: AppColors.primaryColor),
            const SizedBox(width: 15),
            Text(type, style: AppStyles.w500black20),
          ],
        ),
      ),
    );
  }
}
