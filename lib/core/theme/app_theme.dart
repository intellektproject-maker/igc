import 'package:flutter/material.dart';

import 'app_button_theme.dart';
import 'app_colors.dart';
import 'app_input_theme.dart';
import 'app_text_theme.dart';

class AppTheme {
  AppTheme._();

  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,

      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.primary,
        primary: AppColors.primary,
        secondary: AppColors.secondary,
      ),

      scaffoldBackgroundColor: AppColors.background,

      textTheme: AppTextTheme.textTheme,

      elevatedButtonTheme:
      AppButtonTheme.elevatedButtonTheme,

      inputDecorationTheme:
      AppInputTheme.inputDecorationTheme,

      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.primary,
        foregroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
      ),
    );
  }
}