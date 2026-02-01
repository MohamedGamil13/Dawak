import 'package:dawak/core/widgets/custom_icon.dart';
import 'package:flutter/material.dart';

class CustomListtile extends StatelessWidget {
  const CustomListtile({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
  });
  final IconData icon;
  final String title;
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: CustomIcon(icon: icon),
        title: Text(title),
        subtitle: Text(subtitle),
      ),
    );
  }
}
