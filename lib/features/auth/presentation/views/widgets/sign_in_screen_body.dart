import 'package:dawak/core/widgets/sqaure_icon.dart';
import 'package:flutter/material.dart';

class SignInScreenBody extends StatelessWidget {
  const SignInScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: const Column(
        children: [
          SizedBox(height: 30),
          SqaureIcon(icon: Icons.medical_services, dimensions: 80),
        ],
      ),
    );
  }
}
