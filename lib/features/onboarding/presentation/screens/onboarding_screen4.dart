import 'package:dawak/core/theme/colors/app_colors.dart';
import 'package:dawak/core/widgets/custom_listtile.dart';
import 'package:dawak/features/onboarding/presentation/widgets/on_borading_layout.dart';
import 'package:dawak/features/onboarding/presentation/widgets/subscription_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class OnboardingScreen4 extends StatefulWidget {
  const OnboardingScreen4({super.key});

  @override
  State<OnboardingScreen4> createState() => _OnboardingScreen4State();
}

class _OnboardingScreen4State extends State<OnboardingScreen4> {
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

    return SafeArea(
      child: OnBoradingLayout(
        onboradingBody: Stack(
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
                child: const CustomListtile(
                  icon: FontAwesomeIcons.bell,
                  title: "Reminder",
                  subtitle: "Time for your morning dose",
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
                child: const CustomListtile(
                  iconColor: AppColors.blue,
                  icon: FontAwesomeIcons.truckMedical,
                  title: "Refill Out",
                  subtitle: "Your refill is arriving today",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
