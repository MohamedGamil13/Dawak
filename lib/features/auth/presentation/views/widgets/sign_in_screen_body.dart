import 'package:dawak/core/routing/app_navigator.dart';
import 'package:dawak/core/theme/colors/app_colors.dart';
import 'package:dawak/core/theme/styles/app_styles.dart';
import 'package:dawak/core/widgets/custom_button.dart';
import 'package:dawak/core/widgets/custom_textfeild.dart';
import 'package:dawak/core/widgets/sqaure_icon.dart';
import 'package:dawak/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignInScreenBody extends StatelessWidget {
  const SignInScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          spacing: 10,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 30.h),
            const Center(
              child: SqaureIcon(icon: Icons.medical_services, dimensions: 80),
            ),
            Text(
              S.of(context).signInScreenText1,
              style: AppStyles.bold32black,
              textAlign: TextAlign.center,
            ),

            Text(
              S.of(context).signInScreenText2,
              style: AppStyles.w500gray20,
              maxLines: 2,
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                S.of(context).email,
                style: AppStyles.w500black10,
                textAlign: TextAlign.start,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: CustomTextfield(
                hint: S.of(context).enterEmail,
                icon: Icons.email,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                S.of(context).password,
                style: AppStyles.w500black10,
                textAlign: TextAlign.start,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: CustomTextfield(
                hint: S.of(context).enterPassword,
                icon: FontAwesomeIcons.lock,
              ),
            ),
            TextButton(
              onPressed: () {
                context.goForgetPassword();
              },
              style: TextButton.styleFrom(foregroundColor: AppColors.green),
              child: Align(
                alignment: AlignmentDirectional.centerEnd,
                child: Text(S.of(context).forgetPassword),
              ),
            ),
            CustomButton(
              onPressed: () {
                context.goSignUp();
              },
              text: S.of(context).login,
            ),
          ],
        ),
      ),
    );
  }
}
