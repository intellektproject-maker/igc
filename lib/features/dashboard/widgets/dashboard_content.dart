import 'package:flutter/material.dart';

import '../../../core/design_system/design_system.dart';
import 'dashboard_grid.dart';

class DashboardContent extends StatelessWidget {
  const DashboardContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.background,
      padding: const EdgeInsets.all(20),
      child: const SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome Back 👋",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 8),

            Text(
              "IGC Dashboard Overview",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16,
              ),
            ),

            SizedBox(height: 25),

            DashboardGrid(),
          ],
        ),
      ),
    );
  }
}