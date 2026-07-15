import 'package:flutter/material.dart';

import '../../../../../core/design_system/design_system.dart';

class StudentStatCard extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final Color iconBackground;
  final String title;
  final String value;
  final String subtitle;

  const StudentStatCard({
    super.key,
    required this.icon,
    required this.iconColor,
    required this.iconBackground,
    required this.title,
    required this.value,
    required this.subtitle,
  });

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
          CircleAvatar(
            radius: 22,
            backgroundColor: iconBackground,
            child: Icon(
              icon,
              color: iconColor,
            ),
          ),

          const SizedBox(height: AppSpacing.md),

          Text(
            title,
            style: AppTypography.bodySmall,
          ),

          const SizedBox(height: AppSpacing.xs),

          Text(
            value,
            style: AppTypography.headlineMedium,
          ),

          const SizedBox(height: AppSpacing.xs),

          Text(
            subtitle,
            style: AppTypography.bodySmall,
          ),
        ],
      ),
    );
  }
}