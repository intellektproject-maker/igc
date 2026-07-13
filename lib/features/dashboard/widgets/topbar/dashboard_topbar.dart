import 'package:flutter/material.dart';

import '../../../../core/design_system/design_system.dart';

class DashboardTopBar extends StatelessWidget {
  final bool showMenu;

  const DashboardTopBar({
    super.key,
    this.showMenu = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSpacing.appBarHeight,
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.lg,
      ),
      decoration: const BoxDecoration(
        color: AppColors.surface,
        border: Border(
          bottom: BorderSide(
            color: AppColors.divider,
          ),
        ),
      ),
      child: Row(
        children: [
          if (showMenu)
            IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: const Icon(Icons.menu),
            ),

          Expanded(
            child: Container(
              height: 46,
              decoration: BoxDecoration(
                color: AppColors.background,
                borderRadius: BorderRadius.circular(14),
                border: Border.all(
                  color: AppColors.border,
                ),
              ),
              child: const TextField(
                decoration: InputDecoration(
                  hintText: "Search...",
                  prefixIcon: Icon(Icons.search),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 12,
                  ),
                ),
              ),
            ),
          ),

          const SizedBox(width: AppSpacing.lg),

          _TopBarIcon(
            icon: Icons.notifications_none_rounded,
          ),

          const SizedBox(width: AppSpacing.sm),

          _TopBarIcon(
            icon: Icons.mail_outline_rounded,
          ),

          const SizedBox(width: AppSpacing.lg),

          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 8,
            ),
            decoration: BoxDecoration(
              border: Border.all(
                color: AppColors.border,
              ),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Row(
              children: [
                const CircleAvatar(
                  radius: 18,
                  backgroundColor: AppColors.primary,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                    size: 18,
                  ),
                ),

                const SizedBox(width: 10),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Arjun",
                      style: AppTypography.bodyLarge.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "Student",
                      style: AppTypography.bodySmall,
                    ),
                  ],
                ),

                const SizedBox(width: 8),

                const Icon(
                  Icons.keyboard_arrow_down,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _TopBarIcon extends StatelessWidget {
  final IconData icon;

  const _TopBarIcon({
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 44,
      height: 44,
      decoration: BoxDecoration(
        color: AppColors.background,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: AppColors.border,
        ),
      ),
      child: Icon(
        icon,
        color: AppColors.textPrimary,
      ),
    );
  }
}