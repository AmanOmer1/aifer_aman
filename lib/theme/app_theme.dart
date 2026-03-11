import 'package:flutter/material.dart';

class AppTheme {
  static const Color background = Color(0xFF0C0C0F);
  static const Color surfaceColor = Color(0xFF161619);
  static const Color surfaceElevated = Color(0xFF1E1E23);
  static const Color borderColor = Color(0xFF2C2C32);

  static const Color accentColor = Color(0xFF6C8EFF);
  static const Color accentMuted = Color(0xFF2A3460);

  static const Color textPrimary = Color(0xFFF0F0F5);
  static const Color textSecondary = Color(0xFF7A7A8C);
  static const Color textMuted = Color(0xFF4A4A58);

  static const Color primaryBlueColor = Color(0xFF1A2B5C);
  static const Color secondaryAccentColor = accentColor;
  static const Color backgroundLightColor = background;
  static const Color cardSurfaceColor = surfaceColor;
  static const Color textPrimaryDarkColor = textPrimary;
  static const Color textSecondaryGreyColor = textSecondary;
  static const Color successGreenColor = Color(0xFF34D399);
  static const Color shadowTransparentColor = Color(0x33000000);
  static const Color primaryTransparentColor = Color(0x331A2B5C);
  static const Color border = borderColor;

  static ThemeData get lightTheme {
    return ThemeData(
      brightness: Brightness.dark,
      primaryColor: accentColor,
      scaffoldBackgroundColor: background,
      colorScheme: const ColorScheme.dark(
        primary: accentColor,
        secondary: accentColor,
        surface: surfaceColor,
        onPrimary: textPrimary,
        onSecondary: textPrimary,
        onSurface: textPrimary,
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: background,
        elevation: 0,
        centerTitle: false,
        iconTheme: IconThemeData(color: textPrimary),
        titleTextStyle: TextStyle(
          color: textPrimary,
          fontSize: 20,
          fontWeight: FontWeight.w700,
          letterSpacing: -0.5,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: accentColor,
          foregroundColor: textPrimary,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
          textStyle: const TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        fillColor: surfaceColor,
        filled: true,
        contentPadding: const EdgeInsets.symmetric(
          vertical: 14,
          horizontal: 18,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: const BorderSide(color: borderColor),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: const BorderSide(color: borderColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: const BorderSide(color: accentColor, width: 1.5),
        ),
        hintStyle: const TextStyle(color: textMuted, fontSize: 14),
      ),
      textTheme: const TextTheme(
        displayLarge: TextStyle(
          color: textPrimary,
          fontSize: 38,
          fontWeight: FontWeight.w800,
          letterSpacing: -2.0,
        ),
        headlineMedium: TextStyle(
          color: textPrimary,
          fontSize: 24,
          fontWeight: FontWeight.w700,
          letterSpacing: -0.8,
        ),
        titleLarge: TextStyle(
          color: textPrimary,
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
        bodyLarge: TextStyle(color: textPrimary, fontSize: 16, height: 1.6),
        bodyMedium: TextStyle(color: textSecondary, fontSize: 14, height: 1.5),
      ),
    );
  }
}
