import 'package:dawak/core/utils/theme/colors/app_colors.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.buttonColor,
    this.textColor,
  });
  final Function()? onPressed;
  final String text;
  final Color? buttonColor;
  final Color? textColor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: MediaQuery.widthOf(context),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(
            buttonColor ?? AppColors.primaryColor,
          ),
        ),
        child: Text(
          text,
          style: TextStyle(color: textColor ?? AppColors.scaffoldColor),
        ),
      ),
    );
  }
}
