import 'package:flutter/material.dart';

import '../../../../../core/design_system/design_system.dart';

class StudentProgressSection extends StatelessWidget {
  const StudentProgressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSpacing.lg),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(AppRadius.card),
        boxShadow: const [
          AppShadows.small,
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Your Progress",
            style: AppTypography.titleLarge,
          ),

          const SizedBox(height: AppSpacing.lg),

          _buildProgress("Overall Progress", 78),
          _buildProgress("Learning", 80),
          _buildProgress("Innovation", 65),
          _buildProgress("Projects", 90),
          _buildProgress("Leadership", 55),
          _buildProgress("Community", 70),
          _buildProgress("Research", 45),
        ],
      ),
    );
  }

  Widget _buildProgress(String title, int value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: AppSpacing.md),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  title,
                  style: AppTypography.bodyMedium,
                ),
              ),
              Text(
                "$value%",
                style: AppTypography.bodyMedium,
              ),
            ],
          ),

          const SizedBox(height: AppSpacing.xs),

          ClipRRect(
            borderRadius: BorderRadius.circular(AppRadius.pill),
            child: LinearProgressIndicator(
              value: value / 100,
              minHeight: 8,
              backgroundColor: AppColors.divider,
              valueColor: const AlwaysStoppedAnimation(
                AppColors.primary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}