import 'package:flutter/material.dart';

import '../../../../../core/design_system/design_system.dart';

class StudentConnectionsSection extends StatelessWidget {
  const StudentConnectionsSection({super.key});

  @override
  Widget build(BuildContext context) {
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
            "Connections",
            style: AppTypography.titleLarge,
          ),

          const SizedBox(height: AppSpacing.lg),

          _buildItem(
            Icons.people,
            "Students",
            "124",
            Colors.blue,
          ),

          const SizedBox(height: AppSpacing.md),

          _buildItem(
            Icons.school,
            "Mentors",
            "18",
            Colors.green,
          ),

          const SizedBox(height: AppSpacing.md),

          _buildItem(
            Icons.business,
            "Industry Experts",
            "36",
            Colors.orange,
          ),
        ],
      ),
    );
  }

  Widget _buildItem(
      IconData icon,
      String title,
      String value,
      Color color,
      ) {
    return Row(
      children: [
        CircleAvatar(
          radius: 20,
          backgroundColor: color.withOpacity(0.15),
          child: Icon(
            icon,
            color: color,
          ),
        ),

        const SizedBox(width: AppSpacing.md),

        Expanded(
          child: Text(
            title,
            style: AppTypography.bodyMedium,
          ),
        ),

        Text(
          value,
          style: AppTypography.titleMedium,
        ),
      ],
    );
  }
}