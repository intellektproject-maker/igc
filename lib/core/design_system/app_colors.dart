import 'package:flutter/material.dart';

/// ===========================================================
/// IGC DESIGN SYSTEM - COLORS
/// ===========================================================
///
/// Centralized color palette for the entire application.
///
/// Never use Color(0xFF...) directly inside UI.
/// Always use AppColors.
///
/// ===========================================================

class AppColors {
  AppColors._();

  // ==========================================================
  // Brand Colors
  // ==========================================================

  static const Color primary = Color(0xFF000351);
  static const Color secondary = Color(0xFFD4AF37);

  // ==========================================================
  // Background Colors
  // ==========================================================

  static const Color background = Color(0xFFF8F9FA);
  static const Color surface = Colors.white;

  // ==========================================================
  // Text Colors
  // ==========================================================

  static const Color textPrimary = Color(0xFF1C1C1C);
  static const Color textSecondary = Color(0xFF6B7280);
  static const Color textWhite = Colors.white;

  // ==========================================================
  // Status Colors
  // ==========================================================

  static const Color success = Color(0xFF22C55E);
  static const Color warning = Color(0xFFF59E0B);
  static const Color error = Color(0xFFEF4444);
  static const Color info = Color(0xFF3B82F6);

  // ==========================================================
  // UI Colors
  // ==========================================================

  static const Color border = Color(0xFFE5E7EB);
  static const Color divider = Color(0xFFF1F5F9);
  static const Color disabled = Color(0xFFBDBDBD);

  // ==========================================================
  // Shadow
  // ==========================================================

  static const Color shadow = Color(0x1A000000);
}
