import 'package:flutter/material.dart';

import '../../../../core/design_system/design_system.dart';

class ProgressCard extends StatelessWidget {
  const ProgressCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(AppSpacing.lg),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppColors.border),
        boxShadow: [
          BoxShadow(
            color: AppColors.shadow,
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Learning Progress",
            style: AppTypography.titleLarge,
          ),

          const SizedBox(height: AppSpacing.lg),

          const Center(
            child: CircleAvatar(
              radius: 55,
              backgroundColor: AppColors.background,
              child: Icon(
                Icons.show_chart,
                size: 60,
                color: AppColors.primary,
              ),
            ),
          ),

          const SizedBox(height: AppSpacing.lg),

          LinearProgressIndicator(
            value: .72,
            minHeight: 8,
            borderRadius: BorderRadius.circular(10),
          ),

          const SizedBox(height: AppSpacing.sm),

          Text(
            "72% Profile Completion",
            style: AppTypography.bodyMedium,
          ),
        ],
      ),
    );
  }
}