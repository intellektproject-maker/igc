import 'package:flutter/material.dart';

import '../../../../../core/design_system/design_system.dart';
import '../../../../../shared/widgets/dashboard/dashboard_card.dart';
import '../../../../../shared/widgets/dashboard/dashboard_section_header.dart';

class StudentTodayMissionSection extends StatelessWidget {
  const StudentTodayMissionSection({super.key});

  @override
  Widget build(BuildContext context) {
    const totalMissions = 3;
    const completedMissions = 1;
    const progress = completedMissions / totalMissions;

    return DashboardCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DashboardSectionHeader(
            title: "Today's Mission",
            subtitle: "$completedMissions of $totalMissions missions completed",
            actionText: "View All",
            onAction: () {},
          ),

          const SizedBox(height: AppSpacing.lg),

          _missionTile(
            title: "Continue AI Learning Module",
            xp: "+50 XP",
            icon: Icons.play_circle_outline_rounded,
            completed: true,
          ),

          const SizedBox(height: AppSpacing.md),

          _missionTile(
            title: "Submit Innovation Project",
            xp: "+100 XP",
            icon: Icons.lightbulb_outline_rounded,
          ),

          const SizedBox(height: AppSpacing.md),

          _missionTile(
            title: "Attend Chapter Meeting",
            xp: "+30 XP",
            icon: Icons.groups_outlined,
          ),

          const SizedBox(height: AppSpacing.xl),

          Row(
            children: [
              Text(
                "Today's Progress",
                style: AppTypography.titleMedium,
              ),
              const Spacer(),
              Text(
                "${(progress * 100).toInt()}%",
                style: AppTypography.titleMedium.copyWith(
                  color: AppColors.primary,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),

          const SizedBox(height: AppSpacing.sm),

          ClipRRect(
            borderRadius: BorderRadius.circular(AppRadius.pill),
            child: const LinearProgressIndicator(
              value: progress,
              minHeight: 8,
            ),
          ),

          const SizedBox(height: AppSpacing.md),

          Container(
            padding: const EdgeInsets.all(AppSpacing.md),
            decoration: BoxDecoration(
              color: AppColors.primary.withOpacity(.06),
              borderRadius: BorderRadius.circular(AppRadius.card),
            ),
            child: Row(
              children: [
                const Icon(
                  Icons.tips_and_updates_outlined,
                  color: AppColors.primary,
                ),
                const SizedBox(width: AppSpacing.md),
                Expanded(
                  child: Text(
                    "Keep going! Completing all today's missions earns bonus Innovation XP.",
                    style: AppTypography.bodySmall,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _missionTile({
    required String title,
    required String xp,
    required IconData icon,
    bool completed = false,
  }) {
    return Container(
      padding: const EdgeInsets.all(AppSpacing.md),
      decoration: BoxDecoration(
        color: completed
            ? AppColors.success.withOpacity(.08)
            : AppColors.background,
        borderRadius: BorderRadius.circular(AppRadius.card),
        border: Border.all(
          color: completed
              ? AppColors.success.withOpacity(.25)
              : AppColors.border,
        ),
      ),
      child: Row(
        children: [
          Icon(
            completed ? Icons.check_circle : icon,
            color: completed ? AppColors.success : AppColors.primary,
            size: 28,
          ),

          const SizedBox(width: AppSpacing.md),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: AppTypography.bodyMedium.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  xp,
                  style: AppTypography.bodySmall.copyWith(
                    color: Colors.green,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),

          if (!completed)
            const Icon(
              Icons.arrow_forward_ios_rounded,
              size: 16,
              color: Colors.grey,
            ),
        ],
      ),
    );
  }
}