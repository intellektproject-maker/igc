import 'package:flutter/material.dart';

import '../../../../core/design_system/design_system.dart';

class QuickLinks extends StatelessWidget {
  const QuickLinks({super.key});

  @override
  Widget build(BuildContext context) {
    final actions = [
      "Upload Activity",
      "Join Event",
      "Explore Talent",
      "My Profile",
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
            "Quick Links",
            style: AppTypography.titleLarge,
          ),

          const SizedBox(height: AppSpacing.md),

          ...actions.map(
                (action) => Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: () {},
                  child: Text(action),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}