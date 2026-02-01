import 'package:dawak/core/theme/styles/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ConsultationChatCard extends StatelessWidget {
  const ConsultationChatCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// Header
          Row(
            children: [
              Container(
                width: 8.w,
                height: 8.w,
                decoration: const BoxDecoration(
                  color: Colors.green,
                  shape: BoxShape.circle,
                ),
              ),
              SizedBox(width: 6.w),
              Text(
                'Live Support',
                style: AppStyles.w500gray20.copyWith(fontSize: 14.sp),
              ),
            ],
          ),

          SizedBox(height: 16.h),

          /// Pharmacist message
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(radius: 16.r, backgroundColor: Colors.grey.shade300),
              SizedBox(width: 10.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'PHARMACIST SARAH',
                      style: AppStyles.w500gray20.copyWith(
                        fontSize: 12.sp,
                        color: Colors.green,
                      ),
                    ),
                    SizedBox(height: 4.h),
                    Container(
                      padding: EdgeInsets.all(10.w),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                      child: Text(
                        'Hello! How can I help you today?',
                        style: AppStyles.w500gray20.copyWith(fontSize: 14.sp),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          SizedBox(height: 16.h),

          /// Upload prescription box
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 24.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.r),
              border: Border.all(color: Colors.green, style: BorderStyle.solid),
            ),
            child: Column(
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

          SizedBox(height: 12.h),

          /// User message
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 8.h),
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(16.r),
              ),
              child: Text(
                "I've uploaded my prescription.",
                style: AppStyles.w500gray20.copyWith(
                  color: Colors.white,
                  fontSize: 13.sp,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
