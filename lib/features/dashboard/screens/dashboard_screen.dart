import 'package:flutter/material.dart';

import '../widgets/dashboard_content.dart';
import '../widgets/dashboard_sidebar.dart';
import '../widgets/dashboard_topbar.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: const [
          DashboardSidebar(),

          Expanded(
            child: Column(
              children: [
                DashboardTopBar(),

                Expanded(
                  child: DashboardContent(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}