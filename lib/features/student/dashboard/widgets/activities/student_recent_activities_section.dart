import 'package:flutter/material.dart';

import '../../../../../core/design_system/design_system.dart';
import '../../../../../shared/widgets/dashboard/dashboard_card.dart';
import '../../../../../shared/widgets/dashboard/dashboard_section_header.dart';

class StudentRecentActivitiesSection extends StatelessWidget {
  const StudentRecentActivitiesSection({super.key});

  @override
  Widget build(BuildContext context) {
    final activities = [
      {
        "title": "Innovation Idea Submitted",
        "subtitle": "AI Based Smart Irrigation",
        "time": "2 hours ago",
        "xp": "+100 XP",
        "icon": Icons.lightbulb_outline_rounded,
        "color": Colors.orange,
      },
      {
        "title": "Workshop Completed",
        "subtitle": "Flutter Development Bootcamp",
        "time": "Yesterday",
        "xp": "+50 XP",
        "icon": Icons.school_outlined,
        "color": Colors.blue,
      },
      {
        "title": "Certificate Earned",
        "subtitle": "Innovation Challenge 2026",
        "time": "3 days ago",
        "xp": "Certificate",
        "icon": Icons.workspace_premium_outlined,
        "color": Colors.green,
      },
      {
        "title": "Mentor Meeting",
        "subtitle": "Project Discussion",
        "time": "Last Week",
        "xp": "Completed",
        "icon": Icons.people_outline,
        "color": Colors.purple,
      },
    ];

    return DashboardCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DashboardSectionHeader(
            title: "Recent Activities",
            subtitle: "Your latest learning and innovation journey",
            actionText: "View All",
            onAction: () {},
          ),

          const SizedBox(height: AppSpacing.lg),

          ...activities.map(
                (activity) => Padding(
              padding: const EdgeInsets.only(bottom: AppSpacing.md),
              child: _ActivityTile(
                title: activity["title"] as String,
                subtitle: activity["subtitle"] as String,
                time: activity["time"] as String,
                badge: activity["xp"] as String,
                icon: activity["icon"] as IconData,
                color: activity["color"] as Color,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ActivityTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final String time;
  final String badge;
  final IconData icon;
  final Color color;

  const _ActivityTile({
    required this.title,
    required this.subtitle,
    required this.time,
    required this.badge,
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSpacing.md),
      decoration: BoxDecoration(
        color: AppColors.background,
        borderRadius: BorderRadius.circular(AppRadius.card),
        border: Border.all(
          color: AppColors.border,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: color.withValues(alpha: 0.12),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(
              icon,
              color: color,
            ),
          ),

          const SizedBox(width: AppSpacing.md),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: AppTypography.titleMedium.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),

                const SizedBox(height: 4),

                Text(
                  subtitle,
                  style: AppTypography.bodySmall,
                ),

                const SizedBox(height: AppSpacing.sm),

                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.green.withValues(alpha: 0.10),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    badge,
                    style: AppTypography.bodySmall.copyWith(
                      color: Colors.green,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                time,
                style: AppTypography.bodySmall.copyWith(
                  color: Colors.grey.shade600,
                ),
              ),

              const SizedBox(height: AppSpacing.sm),

              const Icon(
                Icons.chevron_right_rounded,
                size: 18,
                color: Colors.grey,
              ),
            ],
          ),
        ],
      ),
    );
  }
}