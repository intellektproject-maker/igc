import 'package:flutter/material.dart';

import '../../../core/design_system/design_system.dart';

class DashboardContent extends StatelessWidget {
  const DashboardContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.background,
      alignment: Alignment.center,
      child: const Text(
        "Dashboard Content",
        style: TextStyle(
          fontSize: 28,
        ),
      ),
    );
  }
}
