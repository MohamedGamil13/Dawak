import 'package:dawak/core/constants/app_images.dart';
import 'package:dawak/core/widgets/circle_image.dart';
import 'package:flutter/material.dart';

class SignInMathodsRow extends StatelessWidget {
  const SignInMathodsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: .center,
      spacing: 80,
      children: [
        CircleImage(image: AppImages.facebookLogo, radius: 25),
        CircleImage(image: AppImages.googleLogo, radius: 25),
      ],
    );
  }
}
