import 'package:dawak/core/theme/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SqaureIcon extends StatelessWidget {
  const SqaureIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        color: AppColors.mintGreen,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: Icon(FontAwesomeIcons.pills, color: AppColors.primaryColor),
      ),
    );
  }
}
