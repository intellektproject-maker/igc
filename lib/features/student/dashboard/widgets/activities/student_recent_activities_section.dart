import 'package:flutter/material.dart';

import '../../../../../core/design_system/design_system.dart';

class StudentRecentActivitiesSection extends StatelessWidget {
  const StudentRecentActivitiesSection({super.key});

  @override
  Widget build(BuildContext context) {
    final activities = [
      {
        "title": "Innovation Idea Submitted",
        "subtitle": "AI Based Smart Irrigation",
        "time": "2 hours ago",
        "icon": Icons.lightbulb_outline,
        "color": Colors.orange,
      },
      {
        "title": "Workshop Completed",
        "subtitle": "Flutter Development Bootcamp",
        "time": "Yesterday",
        "icon": Icons.school_outlined,
        "color": Colors.blue,
      },
      {
        "title": "Certificate Earned",
        "subtitle": "Innovation Challenge 2026",
        "time": "3 days ago",
        "icon": Icons.workspace_premium_outlined,
        "color": Colors.green,
      },
      {
        "title": "Mentor Meeting",
        "subtitle": "Project Discussion",
        "time": "Last Week",
        "icon": Icons.people_outline,
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
            "Recent Activities",
            style: AppTypography.titleLarge,
          ),

          const SizedBox(height: AppSpacing.lg),

          ...activities.map(
                (activity) => Padding(
              padding: const EdgeInsets.only(bottom: AppSpacing.md),
              child: _ActivityTile(
                title: activity["title"] as String,
                subtitle: activity["subtitle"] as String,
                time: activity["time"] as String,
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
  final IconData icon;
  final Color color;

  const _ActivityTile({
    required this.title,
    required this.subtitle,
    required this.time,
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 22,
          backgroundColor: color.withOpacity(0.15),
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
                style: AppTypography.titleMedium,
              ),

              const SizedBox(height: 2),

              Text(
                subtitle,
                style: AppTypography.bodySmall,
              ),
            ],
          ),
        ),

        Text(
          time,
          style: AppTypography.bodySmall,
        ),
      ],
    );
  }
}