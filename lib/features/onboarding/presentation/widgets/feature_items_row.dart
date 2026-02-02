import 'package:dawak/features/onboarding/presentation/widgets/feature_item.dart';
import 'package:dawak/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FeatureItemsRow extends StatelessWidget {
  const FeatureItemsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: .spaceAround,
            children: [
              FeatureItem(
                type: S.of(context).feature1,
                icon: FontAwesomeIcons.pills,
              ),
              FeatureItem(
                type: S.of(context).feature2,
                icon: FontAwesomeIcons.suitcaseMedical,
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: .spaceAround,
            children: [
              FeatureItem(
                type: S.of(context).feature3,
                icon: FontAwesomeIcons.solidHeart,
              ),
              FeatureItem(
                type: S.of(context).feature4,
                icon: FontAwesomeIcons.bandage,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
