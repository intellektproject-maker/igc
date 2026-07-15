import 'package:flutter/material.dart';

import '../../../../../core/design_system/design_system.dart';

class StudentRecommendedSection extends StatelessWidget {
  const StudentRecommendedSection({super.key});

  @override
  Widget build(BuildContext context) {
    final recommendations = [
      {
        "title": "AI & Machine Learning",
        "subtitle": "Recommended Course",
        "icon": Icons.smart_toy_outlined,
        "color": Colors.blue,
      },
      {
        "title": "National Innovation Challenge",
        "subtitle": "Competition",
        "icon": Icons.emoji_events_outlined,
        "color": Colors.orange,
      },
      {
        "title": "Research Internship",
        "subtitle": "Opportunity",
        "icon": Icons.science_outlined,
        "color": Colors.green,
      },
    ];

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
            "Recommended For You",
            style: AppTypography.titleLarge,
          ),

          const SizedBox(height: AppSpacing.lg),

          ...recommendations.map(
                (item) => Padding(
              padding: const EdgeInsets.only(bottom: AppSpacing.md),
              child: Container(
                padding: const EdgeInsets.all(AppSpacing.md),
                decoration: BoxDecoration(
                  color: (item["color"] as Color).withOpacity(.10),
                  borderRadius: BorderRadius.circular(AppRadius.md),
                ),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor:
                      (item["color"] as Color).withOpacity(.15),
                      child: Icon(
                        item["icon"] as IconData,
                        color: item["color"] as Color,
                      ),
                    ),

                    const SizedBox(width: AppSpacing.md),

                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            item["title"] as String,
                            style: AppTypography.titleMedium,
                          ),

                          const SizedBox(height: 2),

                          Text(
                            item["subtitle"] as String,
                            style: AppTypography.bodySmall,
                          ),
                        ],
                      ),
                    ),

                    const Icon(Icons.arrow_forward_ios, size: 16),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}