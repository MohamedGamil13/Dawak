import 'package:dawak/core/theme/styles/app_styles.dart';
import 'package:dawak/features/auth/presentation/views/widgets/reset_password_screen_body.dart';
import 'package:dawak/generated/l10n.dart';
import 'package:flutter/material.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(s.resetPasswordTitle, style: AppStyles.bold24black),
        centerTitle: true,
      ),
      body: const ResetPasswordScreenBody(),
    );
  }
}
