import 'package:flutter/material.dart';

import '../../../../../core/design_system/design_system.dart';
import '../../../../../shared/widgets/dashboard/dashboard_card.dart';
import '../../../../../shared/widgets/dashboard/dashboard_section_header.dart';

class StudentUpcomingEventsSection extends StatelessWidget {
  const StudentUpcomingEventsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final events = [
      {
        "title": "AI Workshop",
        "date": "Tomorrow • 10:00 AM",
        "type": "Workshop",
        "status": "Registered",
        "color": Colors.blue,
      },
      {
        "title": "National Hackathon",
        "date": "3 Days Left",
        "type": "Competition",
        "status": "Open",
        "color": Colors.orange,
      },
      {
        "title": "Startup Pitch",
        "date": "12 Aug • 2:00 PM",
        "type": "Pitch",
        "status": "Limited",
        "color": Colors.green,
      },
    ];

    return DashboardCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DashboardSectionHeader(
            title: "Upcoming Events",
            subtitle: "Workshops, competitions and innovation programs",
            actionText: "View All",
            onAction: () {},
          ),

          const SizedBox(height: AppSpacing.lg),

          ...events.map(
                (event) => Padding(
              padding: const EdgeInsets.only(bottom: AppSpacing.md),
              child: _EventCard(
                title: event["title"] as String,
                date: event["date"] as String,
                type: event["type"] as String,
                status: event["status"] as String,
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
  final String status;
  final Color color;

  const _EventCard({
    required this.title,
    required this.date,
    required this.type,
    required this.status,
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
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: color.withValues(alpha: 0.12),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(
              Icons.event_available_rounded,
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
                  date,
                  style: AppTypography.bodySmall,
                ),

                const SizedBox(height: AppSpacing.sm),

                Wrap(
                  spacing: 8,
                  children: [
                    _Badge(
                      text: type,
                      color: color,
                    ),
                    _Badge(
                      text: status,
                      color: status == "Registered"
                          ? Colors.green
                          : status == "Limited"
                          ? Colors.orange
                          : AppColors.primary,
                    ),
                  ],
                ),
              ],
            ),
          ),

          const SizedBox(width: AppSpacing.md),

          OutlinedButton(
            onPressed: () {},
            child: const Text("Details"),
          ),
        ],
      ),
    );
  }
}

class _Badge extends StatelessWidget {
  final String text;
  final Color color;

  const _Badge({
    required this.text,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 5,
      ),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.10),
        borderRadius: BorderRadius.circular(AppRadius.pill),
      ),
      child: Text(
        text,
        style: AppTypography.bodySmall.copyWith(
          color: color,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}