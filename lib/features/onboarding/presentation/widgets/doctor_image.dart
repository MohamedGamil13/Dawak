import 'package:dawak/core/constants/app_images.dart';
import 'package:dawak/core/utils/theme/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorImage extends StatelessWidget {
  const DoctorImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400.w,
      height: 300.h,
      foregroundDecoration: BoxDecoration(
        border: Border.all(width: 16, color: AppColors.seconderyColor),
        borderRadius: BorderRadius.circular(40),
      ),

      child: ClipRRect(
        borderRadius: BorderRadius.circular(40),
        child: Image.asset(AppImages.doctorImage, fit: BoxFit.fitHeight),
      ),
    );
  }
}
