import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';

/// DM Sans type scale — docs/PROJECT-DESIGN-TOKENS.md. Material's default
/// TextTheme slots (headlineLarge/titleLarge/...) don't line up cleanly with
/// this scale, so these are exposed as named styles instead of forced into
/// ColorScheme/TextTheme roles.
class AppTypography {
  AppTypography._();

  static TextStyle _dmSans({
    required double size,
    required double height,
    required FontWeight weight,
    required double letterSpacing,
    Color color = AppColors.neutral900,
  }) {
    return GoogleFonts.dmSans(
      fontSize: size,
      height: height / size,
      fontWeight: weight,
      letterSpacing: letterSpacing,
      color: color,
    );
  }

  static TextStyle get headline1 => _dmSans(size: 32, height: 40, weight: FontWeight.w700, letterSpacing: -0.64);
  static TextStyle get headline2 => _dmSans(size: 24, height: 32, weight: FontWeight.w600, letterSpacing: -0.24);
  static TextStyle get headline3 => _dmSans(size: 18, height: 26, weight: FontWeight.w600, letterSpacing: 0);
  static TextStyle get bodyRegular => _dmSans(size: 14, height: 20, weight: FontWeight.w400, letterSpacing: 0);
  static TextStyle get bodyMedium => _dmSans(size: 14, height: 20, weight: FontWeight.w500, letterSpacing: 0);
  static TextStyle get caption =>
      _dmSans(size: 12, height: 16, weight: FontWeight.w400, letterSpacing: 0.12, color: AppColors.neutral600);
  static TextStyle get captionBold =>
      _dmSans(size: 12, height: 16, weight: FontWeight.w600, letterSpacing: 0.24, color: AppColors.primaryDark);
  static TextStyle get priceLg => _dmSans(size: 20, height: 28, weight: FontWeight.w700, letterSpacing: -0.2);
}
