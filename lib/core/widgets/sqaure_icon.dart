import 'package:dawak/core/theme/colors/app_colors.dart';
import 'package:flutter/material.dart';

class SqaureIcon extends StatelessWidget {
  const SqaureIcon({
    super.key,
    required this.icon,
    required this.dimensions,
    this.size,
  });
  final IconData icon;
  final double dimensions;
  final double? size;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: dimensions,
      width: dimensions,
      decoration: BoxDecoration(
        color: AppColors.mintGreen,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Center(
        child: Icon(icon, color: AppColors.primaryColor, size: size ?? 45),
      ),
    );
  }
}
