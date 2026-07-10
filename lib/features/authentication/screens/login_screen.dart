import 'package:flutter/material.dart';

import '../../../core/design_system/design_system.dart';
import '../../../shared/widgets/app_button.dart';
import '../../../shared/widgets/app_text_field.dart';
import '../../dashboard/screens/dashboard_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Center(
        child: SizedBox(
          width: 400,
          child: Padding(
            padding: const EdgeInsets.all(AppSpacing.xl),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.school,
                  size: 70,
                  color: AppColors.primary,
                ),

                const SizedBox(height: AppSpacing.xl),

                Text(
                  "Welcome Back",
                  style: AppTypography.headlineLarge,
                ),

                const SizedBox(height: AppSpacing.sm),

                Text(
                  "Login to continue your journey",
                  style: AppTypography.bodyMedium,
                ),

                const SizedBox(height: AppSpacing.xxl),

                const AppTextField(
                  hintText: "User ID",
                  prefixIcon: Icons.person_outline,
                ),

                const SizedBox(height: AppSpacing.lg),

                const AppTextField(
                  hintText: "Password",
                  prefixIcon: Icons.lock_outline,
                  obscureText: true,
                ),

                const SizedBox(height: AppSpacing.xxl),

                AppButton(
                  text: "Login",
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const DashboardScreen(),
                      ),
                    );
                  },
                ),

                const SizedBox(height: AppSpacing.xl),

                Text(
                  "Version 1.0.0",
                  style: AppTypography.bodySmall,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}