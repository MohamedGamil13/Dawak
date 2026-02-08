import 'package:dawak/core/constants/app_images.dart';
import 'package:dawak/core/theme/colors/app_colors.dart';
import 'package:dawak/core/theme/styles/app_styles.dart';
import 'package:dawak/core/widgets/custom_button.dart';
import 'package:dawak/core/widgets/image_container.dart';
import 'package:dawak/features/auth/data/auth_by_biometric.dart';
import 'package:dawak/features/auth/data/repos/auth_services.dart';
import 'package:dawak/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BiometricAuthScreenBody extends StatefulWidget {
  const BiometricAuthScreenBody({super.key});

  @override
  State<BiometricAuthScreenBody> createState() =>
      _BiometricAuthScreenBodyState();
}

class _BiometricAuthScreenBodyState extends State<BiometricAuthScreenBody> {
  bool _isloading = false;
  Future<void> _performLogin(AuthServicesRepo service) async {
    setState(() => _isloading = true);

    // The UI doesn't care if this is Biometric or Email!
    final success = await service.signIn();

    if (success) {
      // Navigate to Home
    } else {
      // Show Error
    }
    setState(() => _isloading = false);
  }

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        spacing: 20,
        children: [
          SizedBox(height: 50.h),

          const ImageContainer(height: 80, imagePath: AppImages.biometricGIF),

          Text(s.biometricTitle, style: AppStyles.bold32black),

          Text(
            s.biometricDescription,
            style: AppStyles.w500gray16,
            textAlign: TextAlign.center,
          ),

          const SizedBox(height: 50),

          CustomButton(onPressed: () {}, text: s.enableFaceId),

          CustomButton(
            onPressed: () {
              _performLogin(AuthByBiometric());
            },
            text: s.usePasswordInstead,
            buttonColor: AppColors.scaffoldColor,
            textColor: AppColors.graySubtitle,
          ),
        ],
      ),
    );
  }
}
