import 'package:dawak/core/theme/styles/app_styles.dart';
import 'package:dawak/features/auth/presentation/views/widgets/biometric_auth_screen_body.dart';
import 'package:flutter/material.dart';

class BiometricAuthScreen extends StatelessWidget {
  const BiometricAuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Security', style: AppStyles.bold24black),
        centerTitle: true,
      ),
      body: const BiometricAuthScreenBody(),
    );
  }
}
