import 'package:flutter/material.dart';

import '../../../../../core/design_system/design_system.dart';

class StudentTopNavigation extends StatelessWidget {
  const StudentTopNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    final bool mobile = MediaQuery.of(context).size.width < 768;

    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.lg,
        vertical: AppSpacing.md,
      ),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(AppRadius.card),
        boxShadow: const [
          AppShadows.small,
        ],
      ),
      child: Row(
        children: [
          if (mobile)
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.menu_rounded,
                color: AppColors.primary,
              ),
            ),

          if (!mobile)
            Expanded(
              child: Container(
                height: 48,
                decoration: BoxDecoration(
                  color: AppColors.background,
                  borderRadius: BorderRadius.circular(AppRadius.input),
                  border: Border.all(
                    color: AppColors.border,
                  ),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: "Search students, events, mentors...",
                    prefixIcon: Icon(Icons.search),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(vertical: 14),
                  ),
                ),
              ),
            ),

          const Spacer(),

          _iconButton(Icons.notifications_none_rounded, "8"),

          const SizedBox(width: AppSpacing.sm),

          _iconButton(Icons.chat_bubble_outline_rounded, "3"),

          const SizedBox(width: AppSpacing.lg),

          const CircleAvatar(
            radius: 22,
            backgroundColor: AppColors.primary,
            child: Text(
              "A",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          if (!mobile) ...[
            const SizedBox(width: AppSpacing.md),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Arjun Prasad",
                  style: AppTypography.titleSmall,
                ),
                Text(
                  "Student",
                  style: AppTypography.bodySmall,
                ),
              ],
            ),
          ]
        ],
      ),
    );
  }

  Widget _iconButton(IconData icon, String badge) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: AppColors.background,
            borderRadius: BorderRadius.circular(AppRadius.md),
          ),
          child: Icon(
            icon,
            color: AppColors.primary,
          ),
        ),

        Positioned(
          right: -3,
          top: -3,
          child: Container(
            width: 18,
            height: 18,
            decoration: const BoxDecoration(
              color: AppColors.error,
              shape: BoxShape.circle,
            ),
            alignment: Alignment.center,
            child: Text(
              badge,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 9,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}