import 'package:dawak/core/theme/colors/app_colors.dart';
import 'package:dawak/features/onboarding/presentation/screens/onboarding_screen.dart';
import 'package:dawak/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(Dawak());
}

class Dawak extends StatelessWidget {
  const Dawak({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: Locale('en'),
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: AppColors.scaffoldColor),
      home: OnboardingScreen(),
    );
  }
}
