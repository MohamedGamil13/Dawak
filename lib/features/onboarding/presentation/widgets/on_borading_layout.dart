import 'package:dawak/core/widgets/custom_button.dart';
import 'package:dawak/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoradingLayout extends StatelessWidget {
  const OnBoradingLayout({super.key, required this.onboradingBody});
  final Widget onboradingBody;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: onboradingBody),
        Padding(
          padding: EdgeInsets.only(bottom: 12.h),
          child: CustomButton(onPressed: () {}, text: S.of(context).nextButton),
        ),
      ],
    );
  }
}
