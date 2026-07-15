import 'package:flutter/material.dart';

import '../../../../../core/design_system/design_system.dart';

class StudentUpcomingEventsSection extends StatelessWidget {
  const StudentUpcomingEventsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final events = [
      {
        "title": "AI Workshop",
        "date": "Tomorrow",
        "type": "Workshop",
        "color": Colors.blue,
      },
      {
        "title": "National Hackathon",
        "date": "3 Days Left",
        "type": "Competition",
        "color": Colors.orange,
      },
      {
        "title": "Startup Pitch",
        "date": "12 Aug",
        "type": "Pitch",
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
            "Upcoming Events",
            style: AppTypography.titleLarge,
          ),

          const SizedBox(height: AppSpacing.lg),

          ...events.map(
                (event) => Padding(
              padding: const EdgeInsets.only(bottom: AppSpacing.md),
              child: _EventCard(
                title: event["title"] as String,
                date: event["date"] as String,
                type: event["type"] as String,
                color: event["color"] as Color,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _EventCard extends StatelessWidget {
  final String title;
  final String date;
  final String type;
  final Color color;

  const _EventCard({
    required this.title,
    required this.date,
    required this.type,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSpacing.md),
      decoration: BoxDecoration(
        color: AppColors.background,
        borderRadius: BorderRadius.circular(AppRadius.md),
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 22,
            backgroundColor: color.withOpacity(0.15),
            child: Icon(
              Icons.event,
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

                const SizedBox(height: 4),

                Text(
                  date,
                  style: AppTypography.bodySmall,
                ),
              ],
            ),
          ),

          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 5,
            ),
            decoration: BoxDecoration(
              color: color.withOpacity(0.15),
              borderRadius: BorderRadius.circular(AppRadius.pill),
            ),
            child: Text(
              type,
              style: TextStyle(
                color: color,
                fontWeight: FontWeight.w600,
                fontSize: 12,
              ),
            ),
          ),
        ],
      ),
    );
  }
}