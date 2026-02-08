import 'package:dawak/core/theme/colors/app_colors.dart';
import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  const CustomTextfield({
    super.key,
    required this.hint,
    this.icon,
    this.hintColor,
  });
  final String hint;
  final IconData? icon;
  final Color? hintColor;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.white,
        focusColor: AppColors.white,
        hoverColor: AppColors.white,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: AppColors.grayborder, width: 2),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: AppColors.grayborder, width: 2),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(
            color: AppColors.primaryColor,
            // width: 0.8,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: AppColors.redError),
        ),
        hintText: hint,
        hintStyle: TextStyle(color: hintColor),
        prefixIcon: icon != null
            ? Icon(icon, color: AppColors.darkGreen)
            : null,
      ),
    );
  }
}

//backEnd  => DB(SQL,NON SQL),API,Domain
