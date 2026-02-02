import 'package:dawak/core/theme/colors/app_colors.dart';
import 'package:dawak/core/widgets/custom_listtile.dart';
import 'package:dawak/features/onboarding/presentation/widgets/subscription_card.dart';
import 'package:dawak/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AnimatedSubscriptionCard extends StatefulWidget {
  const AnimatedSubscriptionCard({super.key});

  @override
  State<AnimatedSubscriptionCard> createState() =>
      _AnimatedSubscriptionCardState();
}

class _AnimatedSubscriptionCardState extends State<AnimatedSubscriptionCard> {
  bool show = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 400), () {
      setState(() => show = true);
    });
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Stack(
      clipBehavior: Clip.none,
      children: [
        const Positioned(
          top: 150,
          left: 20,
          right: 20,
          child: SubscriptionCard(),
        ),
        AnimatedPositioned(
          duration: const Duration(milliseconds: 900),
          curve: Curves.easeOutCubic,
          top: 90,
          left: show ? 100 : width,
          child: AnimatedOpacity(
            duration: const Duration(milliseconds: 400),
            opacity: show ? 1 : 0,
            child: CustomListtile(
              icon: FontAwesomeIcons.bell,
              title: S.of(context).onBoardingScreen4Text1,
              subtitle: S.of(context).onBoardingScreen4Text2,
            ),
          ),
        ),

        AnimatedPositioned(
          duration: const Duration(milliseconds: 700),
          curve: Curves.easeOutCubic,
          top: 310,
          left: show ? 5 : -width,
          child: AnimatedOpacity(
            duration: const Duration(milliseconds: 400),
            opacity: show ? 1 : 0,
            child: CustomListtile(
              iconColor: AppColors.blue,
              icon: FontAwesomeIcons.truckMedical,
              title: S.of(context).onBoardingScreen4Text3,
              subtitle: S.of(context).onBoardingScreen4Text4,
            ),
          ),
        ),
      ],
    );
  }
}
