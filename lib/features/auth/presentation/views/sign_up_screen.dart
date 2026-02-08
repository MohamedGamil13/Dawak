import 'package:dawak/core/theme/styles/app_styles.dart';
import 'package:dawak/features/auth/presentation/views/widgets/sign_up_screen_body.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Your Account', style: AppStyles.bold24black),
        centerTitle: true,
      ),
      body: const SignUpScreenBody(),
    );
  }
}
