import 'package:flutter/material.dart';

import '../../../../core/design_system/design_system.dart';

class DashboardSidebar extends StatelessWidget {
  const DashboardSidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppSpacing.sidebarWidth,
      color: AppColors.primary,
      child: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: AppSpacing.lg),

            // Logo
            const CircleAvatar(
              radius: 34,
              backgroundColor: Colors.white,
              child: Icon(
                Icons.school,
                color: AppColors.primary,
                size: 34,
              ),
            ),

            const SizedBox(height: AppSpacing.md),

            Text(
              "IGC",
              style: AppTypography.headlineMedium.copyWith(
                color: AppColors.textWhite,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 4),

            Text(
              "Innovative Genius Council",
              textAlign: TextAlign.center,
              style: AppTypography.bodySmall.copyWith(
                color: Colors.white70,
              ),
            ),

            const SizedBox(height: AppSpacing.xl),

            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                children: const [
                  _SidebarItem(
                    icon: Icons.dashboard_rounded,
                    title: "Dashboard",
                    selected: true,
                  ),
                  _SidebarItem(
                    icon: Icons.menu_book_rounded,
                    title: "Learning Hub",
                  ),
                  _SidebarItem(
                    icon: Icons.workspace_premium_rounded,
                    title: "TalentBridge",
                  ),
                  _SidebarItem(
                    icon: Icons.lightbulb_outline_rounded,
                    title: "Innovation Hub",
                  ),
                  _SidebarItem(
                    icon: Icons.event_rounded,
                    title: "Events",
                  ),
                  _SidebarItem(
                    icon: Icons.work_outline_rounded,
                    title: "Opportunities",
                  ),
                  _SidebarItem(
                    icon: Icons.groups_rounded,
                    title: "Communities",
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(AppSpacing.md),
              child: SizedBox(
                width: double.infinity,
                height: 46,
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.add),
                  label: const Text("Create"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _SidebarItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final bool selected;

  const _SidebarItem({
    required this.icon,
    required this.title,
    this.selected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      decoration: BoxDecoration(
        color: selected ? Colors.white : Colors.transparent,
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        leading: Icon(
          icon,
          color: selected ? AppColors.primary : Colors.white,
        ),
        title: Text(
          title,
          style: AppTypography.bodyLarge.copyWith(
            color: selected ? AppColors.primary : Colors.white,
            fontWeight: selected ? FontWeight.w600 : FontWeight.w400,
          ),
        ),
        onTap: () {},
      ),
    );
  }
}