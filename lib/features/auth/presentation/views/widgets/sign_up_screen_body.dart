import 'package:dawak/core/locator/service_locator.dart';
import 'package:dawak/core/routing/app_navigator.dart';
import 'package:dawak/core/theme/colors/app_colors.dart';
import 'package:dawak/core/theme/styles/app_styles.dart';
import 'package:dawak/core/widgets/custom_button.dart';
import 'package:dawak/core/widgets/custom_textfeild.dart';
import 'package:dawak/features/auth/presentation/views/widgets/custom_checkbox.dart';
import 'package:dawak/features/auth/presentation/views/widgets/custom_divider.dart';
import 'package:dawak/features/auth/presentation/views/widgets/sign_in_mathods_row.dart';
import 'package:dawak/generated/l10n.dart';
import 'package:flutter/material.dart';

class SignUpScreenBody extends StatelessWidget {
  const SignUpScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 10,
        children: [
          Text(S.of(context).signUpTitle, style: AppStyles.bold24black),
          Text(S.of(context).signUpSubtitle, style: AppStyles.w500green20),

          Text(S.of(context).fullName, style: AppStyles.w500black10),
          CustomTextfield(
            hint: S.of(context).enterName,
            hintColor: AppColors.darkGreen,
          ),

          Text(S.of(context).emailAddress, style: AppStyles.w500black10),
          CustomTextfield(
            hint: S.of(context).enterEmailExample,
            hintColor: AppColors.darkGreen,
          ),

          Text(S.of(context).phoneNumber, style: AppStyles.w500black10),
          CustomTextfield(
            hint: S.of(context).enterPhone,
            hintColor: AppColors.darkGreen,
          ),

          Text(S.of(context).password, style: AppStyles.w500black10),
          CustomTextfield(
            hint: S.of(context).enterPassword,
            hintColor: AppColors.darkGreen,
          ),
          const CustomCheckbox(),
          CustomButton(
            onPressed: () {
              serviceLocator<AppNavigator>().goBiometric();
            },
            text: S.of(context).register,
          ),
          const SizedBox(height: 5),
          const CustomDivider(divideText: 'OR'),
          const SignInMathodsRow(),
        ],
      ),
    );
  }
}
