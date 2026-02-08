import 'package:dawak/core/locator/service_locator.dart';
import 'package:dawak/core/routing/app_navigator.dart';
import 'package:dawak/core/theme/colors/app_colors.dart';
import 'package:dawak/core/theme/styles/app_styles.dart';
import 'package:dawak/core/widgets/custom_button.dart';
import 'package:dawak/core/widgets/custom_textfeild.dart';
import 'package:dawak/generated/l10n.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResetPasswordScreenBody extends StatelessWidget {
  const ResetPasswordScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 10,
        children: [
          SizedBox(height: 80.h),

          Text(
            s.forgetPasswordHeader,
            style: AppStyles.bold32black,
            textAlign: TextAlign.center,
          ),

          Text(
            s.forgetPasswordDescription,
            style: AppStyles.w500gray16,
            textAlign: TextAlign.center,
          ),

          SizedBox(height: 50.h),

          Align(
            alignment: AlignmentDirectional.centerStart,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(s.emailAddress, style: AppStyles.w500black10),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: CustomTextfield(
              icon: Icons.email,
              hint: s.enterEmailToReset,
              hintColor: AppColors.darkGreen,
            ),
          ),

          SizedBox(height: 5.h),

          CustomButton(onPressed: () {}, text: s.sendResetLink),

          SizedBox(height: 5.h),

          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: "${s.rememberPassword} ",
                  style: AppStyles.w500gray18,
                ),
                TextSpan(
                  text: s.login,
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
