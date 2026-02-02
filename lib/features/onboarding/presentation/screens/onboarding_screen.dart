import 'package:dawak/features/onboarding/presentation/ViewModel/page_view_provider.dart';
import 'package:dawak/features/onboarding/presentation/widgets/onboarding_body.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChangeNotifierProvider(
        create: (BuildContext context) => PageViewProvider(),
        child: OnboardingBody(),
      ),
    );
  }
}
