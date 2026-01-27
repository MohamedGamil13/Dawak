import 'package:dawak/core/theme/colors/app_colors.dart';
import 'package:dawak/core/theme/styles/app_styles.dart';
import 'package:flutter/material.dart';

class FeatureItem extends StatelessWidget {
  const FeatureItem({super.key, required this.type, required this.icon});
  final String type;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: AppColors.white,
        border: Border.all(color: AppColors.grayborder, width: 1.5),
        // boxShadow: [
        //   BoxShadow(
        //     color: Colors.grey.withOpacity(0.5),
        //     spreadRadius: 1,
        //     blurRadius: 7,
        //     offset: Offset(5, 5),
        //   ),
        // ],
      ),

      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
        child: Row(
          mainAxisSize: .min,
          children: [
            Icon(icon, color: AppColors.primaryColor),
            const SizedBox(width: 15),
            Text(type, style: AppStyles.w500black10),
          ],
        ),
      ),
    );
  }
}
