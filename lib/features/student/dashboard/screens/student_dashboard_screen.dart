import 'package:flutter/material.dart';

import '../../../../core/design_system/design_system.dart';

import '../widgets/top_navigation/student_top_navigation.dart';
import '../widgets/welcome/student_welcome_card.dart';
import '../widgets/stats/student_stats_section.dart';
import '../widgets/progress/student_progress_section.dart';
import '../widgets/activities/student_recent_activities_section.dart';
import '../widgets/events/student_upcoming_events_section.dart';
import '../widgets/mentor/student_mentor_banner.dart';
import '../widgets/connections/student_connections_section.dart';
import '../widgets/quick_links/student_quick_links_section.dart';
import '../widgets/recommended/student_recommended_section.dart';
class StudentDashboardScreen extends StatelessWidget {
  const StudentDashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isMobile = MediaQuery.of(context).size.width < 768;

    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(AppSpacing.screenPadding),
          child: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(
                maxWidth: 1400,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // ==========================
                  // Top Navigation
                  // ==========================
                  const StudentTopNavigation(),

                  const SizedBox(height: AppSpacing.lg),

                  // ==========================
                  // Welcome Card
                  // ==========================
                  const StudentWelcomeCard(),

                  const SizedBox(height: AppSpacing.lg),

                  // ==========================
                  // Statistics
                  // ==========================
                  const StudentStatsSection(),

                  const SizedBox(height: AppSpacing.lg),

                  // ==========================
                  // Dashboard Content
                  // ==========================
                  if (isMobile)
                    const Column(
                      children: [
                        // Progress
                        StudentProgressSection(),

                        SizedBox(height: AppSpacing.lg),

                        // Activities
                        StudentRecentActivitiesSection(),

                        SizedBox(height: AppSpacing.lg),

                        // Events
                        StudentUpcomingEventsSection(),

                        SizedBox(height: AppSpacing.lg),

                        // Mentor Banner
                        StudentMentorBanner(),

                        SizedBox(height: AppSpacing.lg),

                        // Connections
                        StudentConnectionsSection(),

                        SizedBox(height: AppSpacing.lg),

                        // Quick Links
                        StudentQuickLinksSection(),

                        SizedBox(height: AppSpacing.lg),

                        // Recommended
                        StudentRecommendedSection(),
                      ],
                    )
                  else
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // ==========================
                        // Left Side
                        // ==========================
                        const Expanded(
                          flex: 3,
                          child: Column(
                            children: [
                              StudentProgressSection(),

                              SizedBox(height: AppSpacing.lg),

                              StudentRecentActivitiesSection(),

                              SizedBox(height: AppSpacing.lg),

                              // Recommended Section
                              SizedBox(),
                            ],
                          ),
                        ),

                        const SizedBox(width: AppSpacing.lg),

                        // ==========================
                        // Right Side
                        // ==========================
                        const Expanded(
                          flex: 1,
                          child: Column(
                            children: [
                              StudentUpcomingEventsSection(),

                              SizedBox(height: AppSpacing.lg),

                              // Mentor Banner
                              SizedBox(),

                              SizedBox(height: AppSpacing.lg),

                              // Connections
                              SizedBox(),

                              SizedBox(height: AppSpacing.lg),

                              // Quick Links
                              SizedBox(),
                            ],
                          ),
                        ),
                      ],
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}