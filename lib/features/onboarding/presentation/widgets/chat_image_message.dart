import 'package:dawak/core/theme/colors/app_colors.dart';
import 'package:dawak/core/theme/styles/app_styles.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChatImageMessage extends StatelessWidget {
  const ChatImageMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      options: const RoundedRectDottedBorderOptions(
        gradient: LinearGradient(
          colors: [
            AppColors.darkGreen,
            AppColors.graySubtitle,
            AppColors.primaryColor,
          ],
        ),
        dashPattern: [10, 5],
        strokeWidth: 2.5,
        color: AppColors.primaryColor,
        radius: Radius.circular(18),
      ),
      child: Container(
        height: 180,
        width: 200,
        padding: EdgeInsets.symmetric(vertical: 30.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r),

          color: AppColors.lightGreen,
        ),
        child: Column(
          mainAxisAlignment: .center,
          children: [
            const Icon(Icons.description, color: Colors.green),
            SizedBox(height: 8.h),
            Text(
              'Prescription_01.jpg',
              style: AppStyles.w500gray20.copyWith(fontSize: 13.sp),
            ),
            SizedBox(height: 4.h),
            Text(
              'Uploaded 1m ago',
              style: AppStyles.w500gray20.copyWith(
                fontSize: 11.sp,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
