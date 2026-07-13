import 'package:flutter/material.dart';

import '../widgets/sidebar/dashboard_sidebar.dart';
import '../widgets/topbar/dashboard_topbar.dart';
import '../widgets/welcome/welcome_section.dart';
import '../widgets/stats/stats_grid.dart';
import '../widgets/progress/progress_card.dart';
import '../widgets/activities/recent_activities.dart';
import '../widgets/events/upcoming_events.dart';
import '../widgets/mentor/mentor_banner.dart';
import '../widgets/connections/connections_card.dart';
import '../widgets/quick_links/quick_links.dart';
import '../widgets/recommended/recommended_section.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bool mobile = MediaQuery.of(context).size.width < 900;

    return Scaffold(
      drawer: mobile
          ? const Drawer(
        child: DashboardSidebar(),
      )
          : null,

      body: SafeArea(
        child: Row(
          children: [
            if (!mobile) const DashboardSidebar(),

            Expanded(
              child: Column(
                children: [
                  DashboardTopBar(showMenu: mobile),

                  Expanded(
                    child: SingleChildScrollView(
                      padding: const EdgeInsets.all(24),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          WelcomeSection(),

                          const SizedBox(height: 24),

                          StatsGrid(),

                          const SizedBox(height: 24),

                          if (mobile)
                            Column(
                              children: [
                                ProgressCard(),
                                const SizedBox(height: 20),

                                RecentActivities(),
                                const SizedBox(height: 20),

                                UpcomingEvents(),
                                const SizedBox(height: 20),

                                MentorBanner(),
                                const SizedBox(height: 20),

                                ConnectionsCard(),
                                const SizedBox(height: 20),

                                QuickLinks(),
                                const SizedBox(height: 20),

                                RecommendedSection(),
                              ],
                            )
                          else
                            Row(
                              crossAxisAlignment:
                              CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  flex: 3,
                                  child: Column(
                                    children: [
                                      ProgressCard(),
                                      const SizedBox(height: 20),

                                      RecentActivities(),
                                      const SizedBox(height: 20),

                                      RecommendedSection(),
                                    ],
                                  ),
                                ),

                                const SizedBox(width: 24),

                                Expanded(
                                  flex: 1,
                                  child: Column(
                                    children: [
                                      UpcomingEvents(),
                                      const SizedBox(height: 20),

                                      MentorBanner(),
                                      const SizedBox(height: 20),

                                      ConnectionsCard(),
                                      const SizedBox(height: 20),

                                      QuickLinks(),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}