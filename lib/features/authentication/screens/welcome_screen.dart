import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../core/constants/route_names.dart';
import '../../../core/design_system/app_colors.dart';
import '../../../core/design_system/app_spacing.dart';
import '../../../core/design_system/app_typography.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(AppSpacing.screenPadding),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.school_rounded,
                size: 120,
                color: AppColors.primary,
              ),

              const SizedBox(height: AppSpacing.xl),

              Text(
                "Welcome to",
                style: AppTypography.bodyLarge,
              ),

              const SizedBox(height: AppSpacing.sm),

              Text(
                "IGC",
                style: AppTypography.displayLarge.copyWith(
                  color: AppColors.primary,
                ),
              ),

              const SizedBox(height: AppSpacing.md),

              Text(
                "Innovative Genius Council",
                style: AppTypography.titleLarge,
              ),

              const SizedBox(height: AppSpacing.md),

              Text(
                "Empowering students through innovation, collaboration and opportunities.",
                textAlign: TextAlign.center,
                style: AppTypography.bodyMedium,
              ),

              const SizedBox(height: 60),

              SizedBox(
                width: double.infinity,
                height: 55,
                child: ElevatedButton(
                  onPressed: () {
                    context.go(RouteNames.login);
                  },
                  child: const Text("Get Started"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}