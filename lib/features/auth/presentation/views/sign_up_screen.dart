import 'package:dawak/core/theme/styles/app_styles.dart';
import 'package:dawak/features/auth/presentation/views/widgets/sign_up_screen_body.dart';
import 'package:dawak/generated/l10n.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).createAccount, style: AppStyles.bold24black),
        centerTitle: true,
      ),
      body: const SignUpScreenBody(),
    );
  }
}
