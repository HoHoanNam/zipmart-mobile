import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';
import 'app_spacing.dart';
import 'app_typography.dart';

/// ThemeData built from the "Intelligent Retail Minimalism" tokens —
/// docs/PROJECT-DESIGN-TOKENS.md. success/warning have no ColorScheme slot in
/// Material, so widgets read them from AppColors directly instead.
final appTheme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    seedColor: AppColors.primary,
    brightness: Brightness.light,
    primary: AppColors.primary,
    onPrimary: AppColors.white,
    secondary: AppColors.primaryLight,
    error: AppColors.danger,
    surface: AppColors.white,
    onSurface: AppColors.neutral900,
  ),
  scaffoldBackgroundColor: AppColors.neutral50,
  textTheme: GoogleFonts.dmSansTextTheme().apply(
    bodyColor: AppColors.neutral900,
    displayColor: AppColors.neutral900,
  ),
  appBarTheme: AppBarTheme(
    backgroundColor: AppColors.white,
    foregroundColor: AppColors.neutral900,
    elevation: 0,
    titleTextStyle: AppTypography.headline3,
  ),
  cardTheme: CardThemeData(
    color: AppColors.white,
    elevation: 0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(AppSpacing.radiusCard),
      side: const BorderSide(color: AppColors.neutral100),
    ),
  ),
  chipTheme: ChipThemeData(
    backgroundColor: AppColors.neutral100,
    selectedColor: AppColors.primary,
    labelStyle: AppTypography.bodyMedium,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(999)),
    side: BorderSide.none,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: AppColors.primary,
      foregroundColor: AppColors.white,
      textStyle: AppTypography.bodyMedium,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppSpacing.radiusControl)),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: AppColors.neutral50,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(AppSpacing.radiusControl),
      borderSide: const BorderSide(color: AppColors.neutral100),
    ),
  ),
  navigationBarTheme: NavigationBarThemeData(
    backgroundColor: AppColors.white,
    indicatorColor: AppColors.primaryLight.withValues(alpha: 0.24),
    labelTextStyle: WidgetStateProperty.all(AppTypography.caption),
  ),
);
