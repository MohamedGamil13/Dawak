import 'package:dawak/core/theme/styles/app_styles.dart';
import 'package:dawak/core/widgets/custom_textfeild.dart';
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
          CustomTextfield(hint: S.of(context).enterName, icon: Icons.person),

          Text(S.of(context).emailAddress, style: AppStyles.w500black10),
          CustomTextfield(
            hint: S.of(context).enterEmailExample,
            icon: Icons.email,
          ),

          Text(S.of(context).phoneNumber, style: AppStyles.w500black10),
          CustomTextfield(hint: S.of(context).enterPhone, icon: Icons.phone),

          Text(S.of(context).password, style: AppStyles.w500black10),
          CustomTextfield(hint: S.of(context).enterPassword, icon: Icons.lock),
        ],
      ),
    );
  }
}
