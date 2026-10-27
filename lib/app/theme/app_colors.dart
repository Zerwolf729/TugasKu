import 'package:flutter/material.dart';

/// Design tokens warna untuk TugasKu (light theme).
abstract final class AppColors {
  static const Color background = Color(0xFFF7F8FA);
  static const Color surface = Color(0xFFFFFFFF);
  static const Color surfaceSubtle = Color(0xFFF0F3F7);

  static const Color textPrimary = Color(0xFF172033);
  static const Color textSecondary = Color(0xFF5F6B7A);
  static const Color textDisabled = Color(0xFF98A2B3);

  static const Color border = Color(0xFFE1E6ED);

  static const Color primary = Color(0xFF315EFB);
  static const Color primaryPressed = Color(0xFF2449D8);
  static const Color primaryTint = Color(0xFFEAF0FF);

  static const Color success = Color(0xFF18794E);
  static const Color successTint = Color(0xFFE7F6EE);

  static const Color warning = Color(0xFF946200);
  static const Color warningTint = Color(0xFFFFF4D6);

  static const Color danger = Color(0xFFB42318);
  static const Color dangerTint = Color(0xFFFEECEB);

  static const Color info = Color(0xFF175CD3);
  static const Color infoTint = Color(0xFFEAF2FF);

  static const Color overlay = Color(0x66172033); // #172033 @ 40%
}
