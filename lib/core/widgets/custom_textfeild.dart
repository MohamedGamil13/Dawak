import 'package:dawak/core/theme/colors/app_colors.dart';
import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  const CustomTextfield({super.key, required this.hint, required this.icon});
  final String hint;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: AppColors.darkGreen),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: AppColors.primaryColor),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: AppColors.redError),
        ),
        hintText: hint,
        prefixIcon: Icon(icon, color: AppColors.darkGreen),
      ),
    );
  }
}

//backEnd  => DB(SQL,NON SQL),API,Domain
