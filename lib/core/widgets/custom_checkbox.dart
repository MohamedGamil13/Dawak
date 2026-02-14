import 'package:dawak/core/theme/colors/app_colors.dart';
import 'package:dawak/core/theme/styles/app_styles.dart';
import 'package:dawak/generated/l10n.dart';
import 'package:flutter/material.dart';

class CustomCheckbox extends StatefulWidget {
  const CustomCheckbox({super.key});

  @override
  State<CustomCheckbox> createState() => _CustomCheckboxState();
}

class _CustomCheckboxState extends State<CustomCheckbox> {
  bool ismarked = false;
  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      checkboxShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      ),
      side: const BorderSide(color: AppColors.graySubtitle, width: 1),
      activeColor: AppColors.primaryColor,
      value: ismarked,
      onChanged: (value) {
        setState(() {
          ismarked = value!;
        });
      },
      title: Text(S.of(context).chronicCondition),
      subtitle: Text(
        S.of(context).chronicConditionSubtitle,
        style: AppStyles.w500green12,
      ),
      controlAffinity: .leading,
    );
  }
}
