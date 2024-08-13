import 'package:flutter/material.dart';

class AppColors {
  static Color primaryColor = Color(0xFF004E99);
  static Color ASDColor = Color(0xFF003466);
  static Color secondaryColor = gradientColors[0];
  static Color backgroundColor = Color(0xFFFFFFFF);
  static Color secondaryBackgroundColor = Color(0xFF000000);
  static Color cardColor = Color(0x26004E99);
  static Color appTextPrimaryColor = Color(0xFF2E2E2E);
  static Color appTextSecondaryColor = Color(0xFFFFFFFF);
  static Color appTextHeaderColor = Color(0xFF000000);
  static Color appTextLabelColor = Color(0xFF23303B);
  static Color formFieldColor = Color(0xFFA4A9AE);
  static Color hintTextColor= Color(0xFF8E949A);

  static final BoxDecoration gradientDecoration = _buildGradientDecoration();
  static List<Color> gradientColors = [Color(0xFF004E99), Color(0xFF003466)];
  static BoxDecoration _buildGradientDecoration() {
    return BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: gradientColors,
      ),
    );
  }
}
