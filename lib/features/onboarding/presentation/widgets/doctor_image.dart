import 'package:dawak/core/constants/app_images.dart';
import 'package:dawak/core/theme/colors/app_colors.dart';
import 'package:flutter/material.dart';

class DoctorImage extends StatelessWidget {
  const DoctorImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 400,
      foregroundDecoration: BoxDecoration(
        // add border
        border: Border.all(width: 16, color: AppColors.seconderyColor),
        // round the corners
        borderRadius: BorderRadius.circular(40),
      ),

      child: ClipRRect(
        borderRadius: BorderRadius.circular(40),
        child: Image.asset(AppImages.doctorImage, fit: BoxFit.fitHeight),
      ),
    );
  }
}
