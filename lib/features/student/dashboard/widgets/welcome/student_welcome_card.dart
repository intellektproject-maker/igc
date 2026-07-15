import 'package:flutter/material.dart';

import '../../../../../core/design_system/design_system.dart';

class StudentWelcomeCard extends StatelessWidget {
  const StudentWelcomeCard({super.key});

  @override
  Widget build(BuildContext context) {
    final bool mobile = MediaQuery.of(context).size.width < 768;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(AppSpacing.xl),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(AppRadius.card),
        boxShadow: const [
          AppShadows.small,
        ],
      ),
      child: mobile
          ? Column(
        children: [
          _leftContent(),
          const SizedBox(height: AppSpacing.xl),
          _rightContent(),
        ],
      )
          : Row(
        children: [
          Expanded(
            flex: 3,
            child: _leftContent(),
          ),
          Expanded(
            flex: 2,
            child: _rightContent(),
          ),
        ],
      ),
    );
  }

  Widget _leftContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Welcome back, Arjun! 👋",
          style: AppTypography.headlineMedium,
        ),

        const SizedBox(height: AppSpacing.sm),

        Text(
          "Learn • Build • Connect • Grow with the IGC Community.",
          style: AppTypography.bodyMedium,
        ),

        const SizedBox(height: AppSpacing.xl),

        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.primary,
            foregroundColor: Colors.white,
            elevation: 0,
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
              vertical: 14,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppRadius.button),
            ),
          ),
          child: const Text("Explore Opportunities"),
        ),
      ],
    );
  }

  Widget _rightContent() {
    return Center(
      child: Container(
        width: 130,
        height: 130,
        decoration: BoxDecoration(
          color: AppColors.background,
          shape: BoxShape.circle,
        ),
        child: const Icon(
          Icons.school_rounded,
          size: 60,
          color: AppColors.primary,
        ),
      ),
    );
  }
}