import 'package:dawak/core/widgets/custom_button.dart';
import 'package:dawak/features/onboarding/presentation/ViewModel/page_view_provider.dart';
import 'package:dawak/features/onboarding/presentation/widgets/custom_page_indicator.dart';
import 'package:dawak/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class OnBoradingLayout extends StatelessWidget {
  const OnBoradingLayout({super.key, required this.onboradingBody});
  final Widget onboradingBody;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          Expanded(child: onboradingBody),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 18.0),
            child: Consumer<PageViewProvider>(
              builder: (BuildContext context, provider, Widget? child) {
                return CustomPageIndicator(
                  pageController: provider.pageController,
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 12.h),
            child: CustomButton(
              onPressed: () {
                context.read<PageViewProvider>().goNextPage();
              },
              text: S.of(context).nextButton,
            ),
          ),
        ],
      ),
    );
  }
}
