import 'package:dawak/core/theme/styles/app_styles.dart';
import 'package:dawak/core/widgets/sqaure_icon.dart';
import 'package:dawak/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignInScreenBody extends StatelessWidget {
  const SignInScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(height: 30.h),
          const SqaureIcon(icon: Icons.medical_services, dimensions: 80),
          Text(S.of(context).signInScreenText1, style: AppStyles.bold32black),
          SizedBox(height: 2.h),
          Text(
            S.of(context).signInScreenText2,
            style: AppStyles.w500gray20,
            maxLines: 2,
            textAlign: .center,
          ),
        ],
      ),
    );
  }
}
