import 'package:flutter/material.dart';

import '../../../../core/design_system/design_system.dart';
import 'stat_card.dart';

class StatsGrid extends StatelessWidget {
  const StatsGrid({super.key});

  @override
  Widget build(BuildContext context) {
    final mobile = MediaQuery.of(context).size.width < 700;

    final cards = [
      StatCard(
        title: "Talent Score",
        value: "87",
        icon: Icons.workspace_premium_rounded,
        color: Colors.blue,
      ),
      StatCard(
        title: "Global Rank",
        value: "#24",
        icon: Icons.public,
        color: Colors.green,
      ),
      StatCard(
        title: "Activities",
        value: "31",
        icon: Icons.assignment_turned_in_rounded,
        color: Colors.orange,
      ),
      StatCard(
        title: "Certificates",
        value: "12",
        icon: Icons.verified_rounded,
        color: Colors.purple,
      ),
    ];

    if (mobile) {
      return Column(
        children: cards
            .map(
              (card) => Padding(
            padding: const EdgeInsets.only(bottom: AppSpacing.md),
            child: SizedBox(
              height: 150,
              child: card,
            ),
          ),
        )
            .toList(),
      );
    }

    return SizedBox(
      height: 170,
      child: Row(
        children: List.generate(cards.length, (index) {
          return Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                right: index == cards.length - 1
                    ? 0
                    : AppSpacing.gridGap,
              ),
              child: cards[index],
            ),
          );
        }),
      ),
    );
  }
}