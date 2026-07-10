import 'package:flutter/material.dart';

import '../../core/design_system/design_system.dart';

enum AppButtonType {
  primary,
  secondary,
  outline,
}

class AppButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final AppButtonType type;
  final bool isLoading;
  final bool fullWidth;
  final IconData? icon;
  final double height;
  final double? width;

  const AppButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.type = AppButtonType.primary,
    this.isLoading = false,
    this.fullWidth = true,
    this.icon,
    this.height = 52,
    this.width,
  });

  Color get _backgroundColor {
    switch (type) {
      case AppButtonType.primary:
        return AppColors.primary;

      case AppButtonType.secondary:
        return AppColors.secondary;

      case AppButtonType.outline:
        return Colors.transparent;
    }
  }

  Color get _foregroundColor {
    switch (type) {
      case AppButtonType.primary:
        return Colors.white;

      case AppButtonType.secondary:
        return Colors.white;

      case AppButtonType.outline:
        return AppColors.primary;
    }
  }

  BorderSide get _borderSide {
    switch (type) {
      case AppButtonType.outline:
        return const BorderSide(
          color: AppColors.primary,
          width: 1.5,
        );

      default:
        return BorderSide.none;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: fullWidth ? double.infinity : width,
      height: height,
      child: ElevatedButton(
        onPressed: isLoading ? null : onPressed,
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: _backgroundColor,
          foregroundColor: _foregroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppRadius.button),
            side: _borderSide,
          ),
        ),
        child: isLoading
            ? const SizedBox(
          height: 22,
          width: 22,
          child: CircularProgressIndicator(
            strokeWidth: 2.5,
            color: Colors.white,
          ),
        )
            : Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (icon != null) ...[
              Icon(icon, size: AppIcons.md),
              const SizedBox(width: AppSpacing.sm),
            ],
            Text(
              text,
              style: AppTypography.labelLarge.copyWith(
                color: _foregroundColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}