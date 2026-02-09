import 'package:flutter/material.dart';

class OnboardingConstants {
  // Private constructor to prevent instantiation
  OnboardingConstants._();

  // Spacing
  static const double imageTopSpacing = 30.0;
  static const double sectionSpacing = 20.0;
  static const double largeSectionSpacing = 220.0;

  // Animation
  static const int animationDurationMs = 400;
  static const Duration animationDuration = Duration(milliseconds: 400);
  static const Curve animationCurve = Curves.easeInCubic;

  // Pages
  static const int totalPages = 4;
  static const int lastPageIndex = totalPages - 1;
}
