import 'package:flutter/material.dart';

import '../../../../core/design_system/design_system.dart';
import '../widgets/top_navigation/student_top_navigation.dart';
import '../widgets/welcome/student_welcome_card.dart';
import '../widgets/stats/student_stats_section.dart';
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
                  // Top Navigation
                  const StudentTopNavigation(),

                  const SizedBox(height: AppSpacing.lg),

                  // Welcome Card
                  const StudentWelcomeCard(),

                  const SizedBox(height: AppSpacing.lg),

                  // Statistics
                  const StudentStatsSection(),

                  const SizedBox(height: AppSpacing.lg),

                  // Dashboard Content
                  if (isMobile)
                    const Column(
                      children: [
                        SizedBox(),
                        SizedBox(height: AppSpacing.lg),
                        SizedBox(),
                        SizedBox(height: AppSpacing.lg),
                        SizedBox(),
                        SizedBox(height: AppSpacing.lg),
                        SizedBox(),
                        SizedBox(height: AppSpacing.lg),
                        SizedBox(),
                        SizedBox(height: AppSpacing.lg),
                        SizedBox(),
                        SizedBox(height: AppSpacing.lg),
                        SizedBox(),
                      ],
                    )
                  else
                    const Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 3,
                          child: Column(
                            children: [
                              SizedBox(),
                              SizedBox(height: AppSpacing.lg),
                              SizedBox(),
                              SizedBox(height: AppSpacing.lg),
                              SizedBox(),
                            ],
                          ),
                        ),
                        SizedBox(width: AppSpacing.lg),
                        Expanded(
                          flex: 1,
                          child: Column(
                            children: [
                              SizedBox(),
                              SizedBox(height: AppSpacing.lg),
                              SizedBox(),
                              SizedBox(height: AppSpacing.lg),
                              SizedBox(),
                              SizedBox(height: AppSpacing.lg),
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