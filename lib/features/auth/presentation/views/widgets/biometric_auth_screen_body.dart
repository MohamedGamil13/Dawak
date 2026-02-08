import 'package:dawak/core/constants/app_images.dart';
import 'package:dawak/core/theme/colors/app_colors.dart';
import 'package:dawak/core/theme/styles/app_styles.dart';
import 'package:dawak/core/widgets/custom_button.dart';
import 'package:dawak/core/widgets/image_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BiometricAuthScreenBody extends StatelessWidget {
  const BiometricAuthScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        spacing: 20,
        children: [
          SizedBox(height: 50.h),
          const ImageContainer(height: 80, imagePath: AppImages.biometricGIF),
          const Text('Unlock with Biometric', style: AppStyles.bold32black),
          const Text(
            'Quickly and securely access your prescriptions, medical records, and pharmacist consultations',
            style: AppStyles.w500gray16,
            textAlign: .center,
          ),
          const SizedBox(height: 50),
          CustomButton(onPressed: () {}, text: 'Enable FaceID'),
          CustomButton(
            onPressed: () {},
            text: 'Use Password Instead',
            buttonColor: AppColors.scaffoldColor,
            textColor: AppColors.graySubtitle,
          ),
        ],
      ),
    );
  }
}
