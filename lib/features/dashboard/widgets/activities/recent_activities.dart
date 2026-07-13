import 'package:flutter/material.dart';

import '../../../../core/design_system/design_system.dart';

class RecentActivities extends StatelessWidget {
  const RecentActivities({super.key});

  @override
  Widget build(BuildContext context) {
    final activities = [
      "Completed Flutter Basics",
      "Uploaded Innovation Idea",
      "Registered for AI Workshop",
      "Received Talent Badge",
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
            "Recent Activities",
            style: AppTypography.titleLarge,
          ),

          const SizedBox(height: AppSpacing.md),

          ...activities.map(
                (activity) => ListTile(
              contentPadding: EdgeInsets.zero,
              leading: const CircleAvatar(
                backgroundColor: AppColors.primary,
                child: Icon(
                  Icons.check,
                  color: Colors.white,
                ),
              ),
              title: Text(activity),
              subtitle: const Text("Just now"),
            ),
          ),
        ],
      ),
    );
  }
}