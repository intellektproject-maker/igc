import 'package:flutter/material.dart';

import '../../../core/design_system/design_system.dart';

class AuthHeader extends StatelessWidget {
  const AuthHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 90,
          height: 90,
          decoration: const BoxDecoration(
            color: AppColors.primary,
            shape: BoxShape.circle,
          ),
          child: const Icon(
            Icons.school,
            color: Colors.white,
            size: 50,
          ),
        ),

        const SizedBox(height: AppSpacing.lg),

        Text(
          "Welcome Back",
          style: AppTypography.headlineLarge,
          textAlign: TextAlign.center,
        ),

        const SizedBox(height: AppSpacing.sm),

        Text(
          "Login to continue your journey",
          style: AppTypography.bodyMedium.copyWith(
            color: AppColors.textSecondary,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}