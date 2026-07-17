import 'package:flutter/material.dart';

import '../../../../../core/design_system/design_system.dart';
import 'student_stat_card.dart';

class StudentStatsSection extends StatelessWidget {
  const StudentStatsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        int crossAxisCount;

        if (constraints.maxWidth < 600) {
          crossAxisCount = 1;
        } else if (constraints.maxWidth < 1000) {
          crossAxisCount = 2;
        } else if (constraints.maxWidth < 1400) {
          crossAxisCount = 2;
        } else {
          crossAxisCount = 4;
        }

        return GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 4,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            crossAxisSpacing: AppSpacing.md,
            mainAxisSpacing: AppSpacing.md,

            // 👇 Increased height to prevent overflow
            childAspectRatio: 0.95,
          ),
          itemBuilder: (context, index) {
            const cards = [
              StudentStatCard(
                icon: Icons.auto_graph_rounded,
                iconColor: Color(0xFF1565C0),
                iconBackground: Color(0xFFE3F2FD),
                title: "Innovation Score",
                value: "845",
                subtitle: "+32 this month",
              ),
              StudentStatCard(
                icon: Icons.emoji_events_rounded,
                iconColor: Color(0xFFFF8F00),
                iconBackground: Color(0xFFFFF8E1),
                title: "Chapter Rank",
                value: "#04",
                subtitle: "Top 3%",
              ),
              StudentStatCard(
                icon: Icons.lightbulb_outline_rounded,
                iconColor: Color(0xFF2E7D32),
                iconBackground: Color(0xFFE8F5E9),
                title: "Projects",
                value: "12",
                subtitle: "3 Active",
              ),
              StudentStatCard(
                icon: Icons.workspace_premium_rounded,
                iconColor: Color(0xFF6A1B9A),
                iconBackground: Color(0xFFF3E5F5),
                title: "Skill Points",
                value: "2,450",
                subtitle: "Level 8",
              ),
            ];

            return cards[index];
          },
        );
      }, 
    );
  }
}