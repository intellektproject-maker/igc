import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

/// ===========================================================
/// IGC DESIGN SYSTEM - TYPOGRAPHY
/// ===========================================================
///
/// Centralized text styles for the application.
///
/// Font Family:
/// Roboto
///
/// Never create TextStyle directly inside UI.
/// Always use AppTypography.
///
/// ===========================================================

class AppTypography {
  AppTypography._();

  static final TextStyle displayLarge = GoogleFonts.roboto(
    fontSize: 36,
    fontWeight: FontWeight.w700,
    color: AppColors.textPrimary,
  );

  static final TextStyle displayMedium = GoogleFonts.roboto(
    fontSize: 32,
    fontWeight: FontWeight.w700,
    color: AppColors.textPrimary,
  );

  static final TextStyle headlineLarge = GoogleFonts.roboto(
    fontSize: 28,
    fontWeight: FontWeight.w700,
    color: AppColors.textPrimary,
  );

  static final TextStyle headlineMedium = GoogleFonts.roboto(
    fontSize: 24,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
  );

  static final TextStyle titleLarge = GoogleFonts.roboto(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
  );

  static final TextStyle titleMedium = GoogleFonts.roboto(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    color: AppColors.textPrimary,
  );

  static final TextStyle bodyLarge = GoogleFonts.roboto(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColors.textPrimary,
  );

  static final TextStyle bodyMedium = GoogleFonts.roboto(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.textPrimary,
  );

  static final TextStyle bodySmall = GoogleFonts.roboto(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: AppColors.textSecondary,
  );

  static final TextStyle labelLarge = GoogleFonts.roboto(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: AppColors.textWhite,
  );

  static final TextStyle labelMedium = GoogleFonts.roboto(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    color: AppColors.textSecondary,
  );
}