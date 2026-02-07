import 'package:dawak/core/theme/styles/app_styles.dart';
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
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                'Email',
                style: AppStyles.w500black10,
                textAlign: TextAlign.start,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: CustomTextfield(
                hint: 'Enter your email',
                icon: Icons.email,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                'Password',
                style: AppStyles.w500black10,
                textAlign: TextAlign.start,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: CustomTextfield(
                hint: 'Enter your Password',
                icon: FontAwesomeIcons.lock,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
