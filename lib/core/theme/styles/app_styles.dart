import 'package:dawak/core/theme/colors/app_colors.dart';
import 'package:flutter/material.dart';

abstract class AppStyles {
  static const TextStyle bold32black = TextStyle(
    fontSize: 32,
    fontWeight: .bold,
  );
  static const TextStyle w500gray20 = TextStyle(
    fontSize: 20,
    fontWeight: .w500,
    color: AppColors.graySubtitle,
  );
}
