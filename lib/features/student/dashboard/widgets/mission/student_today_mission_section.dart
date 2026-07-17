import 'package:flutter/material.dart';

import '../../../../../core/design_system/design_system.dart';
import '../../../../../shared/widgets/dashboard/dashboard_card.dart';
import '../../../../../shared/widgets/dashboard/dashboard_section_header.dart';

class StudentTodayMissionSection extends StatelessWidget {
  const StudentTodayMissionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return DashboardCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const DashboardSectionHeader(
            title: "Today's Mission",
            subtitle: "Complete your daily innovation goals",
          ),

          const SizedBox(height: AppSpacing.lg),

          _missionTile(
            title: "Continue AI Learning Module",
            icon: Icons.play_circle_outline,
            completed: true,
          ),

          const SizedBox(height: AppSpacing.md),

          _missionTile(
            title: "Attend Robotics Workshop",
            icon: Icons.event_available_outlined,
          ),

          const SizedBox(height: AppSpacing.md),

          _missionTile(
            title: "Meet Your Mentor",
            icon: Icons.people_outline,
          ),

          const SizedBox(height: AppSpacing.xl),

          Text(
            "Today's Progress",
            style: AppTypography.titleMedium,
          ),

          const SizedBox(height: AppSpacing.sm),

          ClipRRect(
            borderRadius: BorderRadius.circular(AppRadius.pill),
            child: const LinearProgressIndicator(
              value: 0.33,
              minHeight: 8,
            ),
          ),

          const SizedBox(height: AppSpacing.sm),

          Text(
            "1 of 3 missions completed",
            style: AppTypography.bodySmall,
          ),
        ],
      ),
    );
  }

  Widget _missionTile({
    required String title,
    required IconData icon,
    bool completed = false,
  }) {
    return Row(
      children: [
        Icon(
          completed ? Icons.check_circle : icon,
          color: completed
              ? AppColors.success
              : AppColors.primary,
        ),

        const SizedBox(width: AppSpacing.md),

        Expanded(
          child: Text(
            title,
            style: AppTypography.bodyMedium,
          ),
        ),
      ],
    );
  }
}