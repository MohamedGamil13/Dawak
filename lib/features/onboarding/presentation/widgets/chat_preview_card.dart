import 'package:dawak/core/constants/app_images.dart';
import 'package:dawak/core/utils/theme/colors/app_colors.dart';
import 'package:dawak/core/utils/theme/styles/app_styles.dart';
import 'package:dawak/core/widgets/chat_bubble.dart';
import 'package:dawak/core/widgets/circle_image.dart';
import 'package:dawak/core/widgets/custom_icon.dart';
import 'package:dawak/features/onboarding/presentation/widgets/chat_image_message.dart';
import 'package:dawak/features/onboarding/presentation/widgets/chat_input_field.dart';
import 'package:dawak/generated/l10n.dart';
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
        borderRadius: BorderRadius.circular(8.r),
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
                  color: AppColors.primaryColor,
                  shape: BoxShape.circle,
                ),
              ),
              SizedBox(width: 7.w),
              Text(
                S.of(context).consultationChatCardTitle,
                style: AppStyles.w500black10.copyWith(fontSize: 14.sp),
              ),
            ],
          ),
          const Divider(thickness: 0.1),
          SizedBox(height: 16.h),

          /// Pharmacist message
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: .start,
            children: [
              const CircleImage(image: AppImages.chatPersonImage),
              SizedBox(width: 10.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: .start,
                  mainAxisAlignment: .start,
                  children: [
                    ChatBubble(
                      text: S.of(context).consultationChatCardChatMessage,
                      isSender: true,
                    ),
                    SizedBox(height: 4.h),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 16.h),

          /// Upload prescription box
          const Align(alignment: .bottomRight, child: ChatImageMessage()),
          SizedBox(height: 12.h),

          /// User message
          Align(
            alignment: Alignment.centerRight,
            child: ChatBubble(
              isSender: false,
              text: S.of(context).consultationChatCardMessage2,
            ),
          ),
          //input fields
          SizedBox(height: 12.h),
          const Row(
            children: [
              Expanded(child: ChatInputField()),
              CustomIcon(icon: Icons.camera_alt),
            ],
          ),
        ],
      ),
    );
  }
}
