import 'package:dawak/core/locator/service_locator.dart';
import 'package:dawak/core/routing/app_navigator.dart';
import 'package:dawak/core/theme/colors/app_colors.dart';
import 'package:dawak/core/theme/styles/app_styles.dart';
import 'package:dawak/core/widgets/custom_button.dart';
import 'package:dawak/core/widgets/custom_textfeild.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResetPasswordScreenBody extends StatelessWidget {
  const ResetPasswordScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: .center,
        spacing: 10,
        children: [
          SizedBox(height: 80.h),
          const Text(
            'Forget Password ? ',
            style: AppStyles.bold32black,
            textAlign: .center,
          ),
          const Text(
            " Enter the email address associated with your account and we'll send you a link to reset your password",
            style: AppStyles.w500gray16,
            textAlign: .center,
          ),
          SizedBox(height: 50.h),
          const Align(
            alignment: AlignmentDirectional.centerStart,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Text('Email Address', style: AppStyles.w500black10),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: CustomTextfield(
              icon: Icons.email,
              hint: 'Enter yor Email To reset your Password',
              hintColor: AppColors.darkGreen,
            ),
          ),
          SizedBox(height: 5.h),
          CustomButton(onPressed: () {}, text: 'Send Reset Link'),
          SizedBox(height: 5.h),
          Text.rich(
            TextSpan(
              children: <TextSpan>[
                const TextSpan(
                  text: 'Remebar Your Password ? ',
                  style: AppStyles.w500gray18,
                ),
                TextSpan(
                  text: 'Log In',
                  style: AppStyles.w500green18,
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      serviceLocator<AppNavigator>().goSignIn();
                    },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
