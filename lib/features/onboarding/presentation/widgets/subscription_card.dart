import 'package:dawak/core/widgets/sqaure_icon.dart';
import 'package:flutter/material.dart';

class SubscriptionCard extends StatelessWidget {
  const SubscriptionCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
      child: Column(
        children: [
          Row(children: [Expanded(child: SqaureIcon())]),
        ],
      ),
    );
  }
}
