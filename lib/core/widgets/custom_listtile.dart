import 'package:dawak/core/utils/theme/colors/app_colors.dart';
import 'package:dawak/core/widgets/custom_icon.dart';
import 'package:flutter/material.dart';

class CustomListtile extends StatelessWidget {
  const CustomListtile({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    this.iconColor,
  });
  final IconData icon;
  final String title;
  final String subtitle;
  final Color? iconColor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.widthOf(context) / 1.6,
      child: Card(
        color: AppColors.white,
        shadowColor: Colors.grey[100],
        child: ListTile(
          leading: CustomIcon(icon: icon, iconColor: iconColor),
          title: Text(title, style: const TextStyle(fontWeight: .w600)),
          subtitle: Text(subtitle),
        ),
      ),
    );
  }
}
