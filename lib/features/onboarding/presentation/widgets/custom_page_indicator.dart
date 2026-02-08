import 'package:dawak/core/theme/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomPageIndicator extends StatelessWidget {
  const CustomPageIndicator({super.key, required this.pageController});
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: pageController,
      count: 4,
      effect: const ExpandingDotsEffect(
        activeDotColor: AppColors.primaryColor,
        dotColor: AppColors.mintGreen,
        dotHeight: 8,
        dotWidth: 8,
        expansionFactor: 4,
        spacing: 8,
      ),
    );
  }
}
