import 'package:dawak/core/theme/colors/app_colors.dart';
import 'package:dawak/core/theme/styles/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChatBubble extends StatelessWidget {
  const ChatBubble({super.key, required this.text, required this.isSender});
  final String text;
  final bool isSender;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.w),
      decoration: BoxDecoration(
        color: isSender ? Colors.grey.shade100 : AppColors.primaryColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
          bottomLeft: isSender ? .zero : Radius.circular(15),
          bottomRight: isSender ? Radius.circular(15) : .zero,
        ),
      ),
      child: Text(
        text,
        style: isSender
            ? AppStyles.w500gray20.copyWith(fontSize: 14.sp)
            : AppStyles.w500gray20.copyWith(
                fontSize: 14.sp,
                color: AppColors.white,
              ),
      ),
    );
  }
}
