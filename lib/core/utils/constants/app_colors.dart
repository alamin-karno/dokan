import 'package:flutter/material.dart';

class AppColors {
  /// App theme colors
  static const Color primary = Color(0xFFF75F55);
  static const Color secondary = Color(0xFFFFFFFF);
  static const Color accent = Color(0xFFFF679B);

  /// Gradiant Colors
  static const linearGradiant = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Color(0xFFF2709C),
      Color(0xFFFF9472),
    ],
  );

  /// Divider colors
  static const Color dividerLight = Color(0xFFD8D8D8);

  // Bottom Sheet Bar
  static const Color bottomSheetBar = Color(0xFFFFD3DD);

  /// Background colors
  static const Color light = Color(0xFFF6F6F6);
  static const Color dark = Color(0xFF272727);
  static const Color primaryBackground = Color(0xFFF8F8F8);

  /// Text colors
  static const Color textPrimary = Color(0xFF333333);
  static const Color textSecondary = Color(0xFF818995);
  static const Color textWhite = Colors.white;
  static const Color textLink = Color(0xFF2893E3);
  static const Color textGrey = Color(0xFF535353);
  static const Color textInputField = Color(0xFF535353);

  /// Button colors
  static const Color buttonPrimary = Color(0xFF4b68ff);
  static const Color buttonGreen = Color(0xFF1ABC9C);
  static const Color buttonSecondary = Color(0xFF6C757D);
  static const Color buttonDisabled = Color(0xFFC4C4C4);

  /// Icon Colors
  static const Color iconColor = Color(0xFF222455);
  static const Color ratingIcon = Color(0xFFD3D8E5);
  static const Color iconSecondaryColor = Color(0xFFA0A9BD);
  static const Color iconProfileColor = Color(0xFF7C8592);
  static const Color iconArrowColor = Color(0xFF899AA2);

  /// Border colors
  static const Color borderPrimary = Color(0xFFD9D9D9);
  static const Color borderSecondary = Color(0xFFE6E6E6);

  /// Error and validation colors
  static const Color error = Color(0xFFD32F2F);
  static const Color success = Color(0xFF388E3C);
  static const Color warning = Color(0xFFF57C00);
  static const Color info = Color(0xFF1976D2);

  /// Neutral Shades
  static const Color black = Color(0xFF232323);
  static const Color darkerGrey = Color(0xFF383C40);
  static const Color darkGrey = Color(0xFFA4A9AF);
  static const Color grey = Color(0xFFE0E0E0);
  static const Color softGrey = Color(0xFFF4F4F4);
  static const Color lightGrey = Color(0xFFF9F9F9);
  static const Color white = Color(0xFFFFFFFF);
}
