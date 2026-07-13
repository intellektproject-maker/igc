import 'package:flutter/material.dart';

import '../../../../core/design_system/design_system.dart';

class UpcomingEvents extends StatelessWidget {
  const UpcomingEvents({super.key});

  @override
  Widget build(BuildContext context) {
    final events = [
      ["AI Hackathon", "22 July"],
      ["Startup Meetup", "28 July"],
      ["Research Expo", "05 Aug"],
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
            "Upcoming Events",
            style: AppTypography.titleLarge,
          ),
          const SizedBox(height: AppSpacing.md),

          ...events.map(
                (e) => ListTile(
              contentPadding: EdgeInsets.zero,
              leading: const Icon(
                Icons.event,
                color: AppColors.primary,
              ),
              title: Text(e[0]),
              subtitle: Text(e[1]),
            ),
          ),
        ],
      ),
    );
  }
}