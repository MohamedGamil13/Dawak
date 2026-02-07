import 'package:dawak/core/theme/styles/app_styles.dart';
import 'package:dawak/features/auth/presentation/views/widgets/sign_in_screen_body.dart';
import 'package:dawak/generated/l10n.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          S.of(context).signInScreenTitle,
          style: AppStyles.bold24black,
        ),
        centerTitle: true,
      ),
      body: const SignInScreenBody(),
    );
  }
}
