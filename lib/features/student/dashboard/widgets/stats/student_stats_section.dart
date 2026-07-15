import 'package:flutter/material.dart';

import '../../../../../core/design_system/design_system.dart';
import 'student_stat_card.dart';

class StudentStatsSection extends StatelessWidget {
  const StudentStatsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        int crossAxisCount = 4;

        if (constraints.maxWidth < 600) {
          crossAxisCount = 2;
        } else if (constraints.maxWidth < 1000) {
          crossAxisCount = 2;
        }

        return GridView.count(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          crossAxisCount: crossAxisCount,
          crossAxisSpacing: AppSpacing.md,
          mainAxisSpacing: AppSpacing.md,
          childAspectRatio: constraints.maxWidth < 600 ? 0.9 : 1.25,
          children: const [
            StudentStatCard(
              icon: Icons.emoji_events_outlined,
              iconColor: Colors.orange,
              iconBackground: Color(0xFFFFF3E0),
              title: "Talent Score",
              value: "845",
              subtitle: "+25 this month",
            ),

            StudentStatCard(
              icon: Icons.public,
              iconColor: Colors.blue,
              iconBackground: Color(0xFFE3F2FD),
              title: "Global Rank",
              value: "#42",
              subtitle: "Top 5%",
            ),

            StudentStatCard(
              icon: Icons.task_alt,
              iconColor: Colors.green,
              iconBackground: Color(0xFFE8F5E9),
              title: "Activities",
              value: "18",
              subtitle: "Completed",
            ),

            StudentStatCard(
              icon: Icons.workspace_premium_outlined,
              iconColor: Colors.purple,
              iconBackground: Color(0xFFF3E5F5),
              title: "Certificates",
              value: "12",
              subtitle: "Earned",
            ),
          ],
        );
      },
    );
  }
}