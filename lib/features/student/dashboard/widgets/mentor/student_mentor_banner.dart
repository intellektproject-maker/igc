import 'package:flutter/material.dart';

import '../../../../../core/design_system/design_system.dart';
import '../../../../../shared/widgets/dashboard/dashboard_card.dart';
import '../../../../../shared/widgets/dashboard/dashboard_section_header.dart';

class StudentMentorBanner extends StatelessWidget {
  const StudentMentorBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return DashboardCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DashboardSectionHeader(
            title: "Your Mentor",
            subtitle: "Guidance for your innovation journey",
            actionText: "View Profile",
            onAction: () {},
          ),

          const SizedBox(height: AppSpacing.lg),

          Row(
            children: [
              CircleAvatar(
                radius: 34,
                backgroundColor:
                AppColors.primary.withValues(alpha: 0.10),
                child: const Icon(
                  Icons.person,
                  size: 34,
                  color: AppColors.primary,
                ),
              ),

              const SizedBox(width: AppSpacing.lg),

              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Dr. Priya Sharma",
                      style: AppTypography.titleLarge.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 4),

                    Text(
                      "Innovation Mentor",
                      style: AppTypography.bodyMedium,
                    ),

                    const SizedBox(height: 8),

                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 5,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.green.withValues(alpha: 0.10),
                        borderRadius:
                        BorderRadius.circular(AppRadius.pill),
                      ),
                      child: Text(
                        "Available",
                        style: AppTypography.bodySmall.copyWith(
                          color: Colors.green,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          const SizedBox(height: AppSpacing.xl),

          _infoTile(
            Icons.calendar_today_outlined,
            "Next Meeting",
            "Friday • 3:00 PM",
          ),

          const SizedBox(height: AppSpacing.md),

          _infoTile(
            Icons.lightbulb_outline_rounded,
            "Current Focus",
            "AI Smart Irrigation Project",
          ),

          const SizedBox(height: AppSpacing.xl),

          Row(
            children: [
              Expanded(
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.chat_outlined),
                  label: const Text("Message"),
                ),
              ),

              const SizedBox(width: AppSpacing.md),

              Expanded(
                child: OutlinedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.video_call_outlined),
                  label: const Text("Schedule"),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _infoTile(
      IconData icon,
      String title,
      String value,
      ) {
    return Row(
      children: [
        Icon(
          icon,
          color: AppColors.primary,
          size: 22,
        ),

        const SizedBox(width: AppSpacing.md),

        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: AppTypography.bodySmall,
              ),

              const SizedBox(height: 2),

              Text(
                value,
                style: AppTypography.bodyMedium.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}