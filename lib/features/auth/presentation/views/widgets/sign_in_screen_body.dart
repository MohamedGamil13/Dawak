import 'package:dawak/core/widgets/sqaure_icon.dart';
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
        ],
      ),
    );
  }
}
