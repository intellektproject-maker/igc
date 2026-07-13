import 'package:flutter/material.dart';

import '../../../../core/design_system/design_system.dart';

class ConnectionsCard extends StatelessWidget {
  const ConnectionsCard({super.key});

  @override
  Widget build(BuildContext context) {
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
            "Connections",
            style: AppTypography.titleLarge,
          ),

          const SizedBox(height: AppSpacing.md),

          const ListTile(
            leading: CircleAvatar(child: Icon(Icons.person)),
            title: Text("Rahul Kumar"),
            subtitle: Text("Flutter Developer"),
          ),

          const ListTile(
            leading: CircleAvatar(child: Icon(Icons.person)),
            title: Text("Priya Sharma"),
            subtitle: Text("AI Researcher"),
          ),
        ],
      ),
    );
  }
}