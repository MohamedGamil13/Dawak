import 'package:dawak/core/theme/colors/app_colors.dart';
import 'package:flutter/material.dart';

class TextContainer extends StatelessWidget {
  const TextContainer({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColors.mintGreen,
      ),
      child: Text(text, style: const TextStyle(color: AppColors.green)),
    );
  }
}
