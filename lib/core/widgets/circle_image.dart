import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CircleImage extends StatelessWidget {
  const CircleImage({super.key, required this.image, this.radius});
  final String image;
  final double? radius;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius ?? 16.r,
      backgroundImage: AssetImage(image),
    );
  }
}
