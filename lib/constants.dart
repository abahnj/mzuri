import 'package:flutter/material.dart';

/// Colors
const scaffoldBackgroundColour = Color(0xFFE5E5E5);
const mzuriBlue = Color(0xFF24ABDC);
const blueGradient = [Color(0xFF0CA2D9), Color(0xFF0077A3)];

///Sizes
const avatarRadius = 32.0;

///Global Themes

/// Text Styles
const titleStyle = TextStyle(
  color: mzuriBlue,
  fontSize: 14,
  fontWeight: FontWeight.w600,
);

const formTitleStyle = TextStyle(
  color: mzuriBlue,
  fontSize: 18,
  fontWeight: FontWeight.w600,
);

/// Spacers
const spacerH32 = SizedBox(height: 32);
const spacerH16 = SizedBox(height: 16);

String getEnumTitle(String value) {
  return value.split('.').last[0].toUpperCase() +
      value.split('.').last.substring(1);
}
