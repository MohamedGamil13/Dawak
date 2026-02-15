import 'package:dawak/core/utils/theme/colors/app_colors.dart';
import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({super.key, required this.icon, this.iconColor});
  final IconData icon;
  final Color? iconColor;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: iconColor ?? AppColors.primaryColor,
      child: Icon(icon, color: AppColors.white),
    );
  }
}
