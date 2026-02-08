import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key, required this.divideText});
  final String divideText;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(child: Divider(indent: 27, endIndent: 27)),
        Text(divideText),
        const Expanded(child: Divider(indent: 27, endIndent: 27)),
      ],
    );
  }
}
