import 'package:flutter/material.dart';

import 'dashboard_card.dart';

class DashboardGrid extends StatelessWidget {
  const DashboardGrid({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    int crossAxisCount = 2;

    if (width > 1200) {
      crossAxisCount = 4;
    } else if (width > 700) {
      crossAxisCount = 3;
    }

    return GridView.count(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: crossAxisCount,
      crossAxisSpacing: 16,
      mainAxisSpacing: 16,
      childAspectRatio: 1.45,
      children: const [
        DashboardCard(
          title: "Students",
          value: "1,250",
          icon: Icons.people,
          color: Colors.blue,
        ),
        DashboardCard(
          title: "Faculty",
          value: "86",
          icon: Icons.school,
          color: Colors.green,
        ),
        DashboardCard(
          title: "Courses",
          value: "42",
          icon: Icons.menu_book,
          color: Colors.orange,
        ),
        DashboardCard(
          title: "Attendance",
          value: "96%",
          icon: Icons.fact_check,
          color: Colors.purple,
        ),
      ],
    );
  }
}