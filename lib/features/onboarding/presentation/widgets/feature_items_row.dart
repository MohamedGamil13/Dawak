import 'package:dawak/features/onboarding/presentation/widgets/feature_item.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FeatureItemsRow extends StatelessWidget {
  const FeatureItemsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: const Column(
        children: [
          Row(
            mainAxisAlignment: .spaceAround,
            children: [
              FeatureItem(type: "vitamins", icon: FontAwesomeIcons.pills),
              FeatureItem(
                type: "First Aid",
                icon: FontAwesomeIcons.suitcaseMedical,
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: .spaceAround,
            children: [
              FeatureItem(
                type: "Daily Care",
                icon: FontAwesomeIcons.solidHeart,
              ),
              FeatureItem(type: "Skin Care", icon: FontAwesomeIcons.bandage),
            ],
          ),
        ],
      ),
    );
  }
}
