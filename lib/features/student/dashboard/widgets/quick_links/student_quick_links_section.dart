import 'package:flutter/material.dart';

import '../../../../../core/design_system/design_system.dart';

class StudentQuickLinksSection extends StatelessWidget {
  const StudentQuickLinksSection({super.key});

  @override
  Widget build(BuildContext context) {
    final links = [
      {
        "title": "Learning Hub",
        "icon": Icons.menu_book_outlined,
        "color": Colors.blue,
      },
      {
        "title": "Innovation",
        "icon": Icons.lightbulb_outline,
        "color": Colors.orange,
      },
      {
        "title": "Events",
        "icon": Icons.event_outlined,
        "color": Colors.green,
      },
      {
        "title": "Communities",
        "icon": Icons.groups_outlined,
        "color": Colors.purple,
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
            "Quick Links",
            style: AppTypography.titleLarge,
          ),

          const SizedBox(height: AppSpacing.lg),

          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: links.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: AppSpacing.md,
              mainAxisSpacing: AppSpacing.md,
              childAspectRatio: 1.2,
            ),
            itemBuilder: (context, index) {
              final item = links[index];

              return InkWell(
                borderRadius: BorderRadius.circular(AppRadius.lg),
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                    color: (item["color"] as Color).withOpacity(.12),
                    borderRadius: BorderRadius.circular(AppRadius.lg),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        item["icon"] as IconData,
                        color: item["color"] as Color,
                        size: 32,
                      ),

                      const SizedBox(height: AppSpacing.sm),

                      Text(
                        item["title"] as String,
                        textAlign: TextAlign.center,
                        style: AppTypography.bodyMedium,
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}