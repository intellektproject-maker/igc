import 'package:flutter/material.dart';

import '../../../../core/design_system/design_system.dart';

class RecommendedSection extends StatelessWidget {
  const RecommendedSection({super.key});

  @override
  Widget build(BuildContext context) {
    final courses = [
      "Advanced Flutter",
      "AI & Machine Learning",
      "Startup Fundamentals",
    ];

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(AppSpacing.lg),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppColors.border),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Recommended For You",
            style: AppTypography.titleLarge,
          ),

          const SizedBox(height: AppSpacing.md),

          ...courses.map(
                (course) => ListTile(
              contentPadding: EdgeInsets.zero,
              leading: const Icon(
                Icons.play_circle_fill,
                color: AppColors.primary,
              ),
              title: Text(course),
            ),
          ),
        ],
      ),
    );
  }
}