import 'package:flutter/material.dart';

import '../../../../core/design_system/design_system.dart';

class MentorBanner extends StatelessWidget {
  const MentorBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(AppSpacing.lg),
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Need Guidance?",
            style: AppTypography.titleLarge.copyWith(
              color: Colors.white,
            ),
          ),

          const SizedBox(height: AppSpacing.sm),

          Text(
            "Book a mentor session with an industry expert.",
            style: AppTypography.bodyMedium.copyWith(
              color: Colors.white70,
            ),
          ),

          const SizedBox(height: AppSpacing.lg),

          ElevatedButton(
            onPressed: () {},
            child: const Text("Book Mentor"),
          ),
        ],
      ),
    );
  }
}