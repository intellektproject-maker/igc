import 'package:flutter/material.dart';

import '../../../../../core/design_system/design_system.dart';

class StudentWelcomeCard extends StatelessWidget {
  const StudentWelcomeCard({super.key});

  bool _isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 768;

  String _greeting() {
    final hour = DateTime.now().hour;

    if (hour < 12) {
      return "Good Morning";
    } else if (hour < 17) {
      return "Good Afternoon";
    } else {
      return "Good Evening";
    }
  }

  @override
  Widget build(BuildContext context) {
    final mobile = _isMobile(context);

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(AppSpacing.xl),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(AppRadius.card),
        border: Border.all(
          color: AppColors.border,
        ),
        boxShadow: const [
          AppShadows.small,
        ],
      ),
      child: mobile
          ? Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _leftContent(),
          const SizedBox(height: AppSpacing.xl),
          _profileSection(),
        ],
      )
          : Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 3,
            child: _leftContent(),
          ),
          const SizedBox(width: AppSpacing.xl),
          Expanded(
            child: _profileSection(),
          ),
        ],
      ),
    );
  }

  Widget _leftContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "${_greeting()} 👋",
          style: AppTypography.bodyLarge.copyWith(
            color: AppColors.primary,
            fontWeight: FontWeight.w600,
          ),
        ),

        const SizedBox(height: AppSpacing.sm),

        Text(
          "Arjun",
          style: AppTypography.headlineLarge,
        ),

        const SizedBox(height: AppSpacing.sm),

        Text(
          "Continue your innovation journey with IGC. Learn, build, collaborate and grow through projects, innovation challenges and community activities.",
          style: AppTypography.bodyMedium.copyWith(
            color: Colors.grey.shade700,
            height: 1.5,
          ),
        ),

        const SizedBox(height: AppSpacing.xl),

        _metricsSection(),

        const SizedBox(height: AppSpacing.xl),

        _nextGoalCard(),

        const SizedBox(height: AppSpacing.xl),

        ElevatedButton.icon(
          onPressed: () {},
          icon: const Icon(Icons.play_arrow_rounded),
          label: const Text("Continue Learning"),
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.primary,
            foregroundColor: Colors.white,
            elevation: 0,
            padding: const EdgeInsets.symmetric(
              horizontal: 28,
              vertical: 16,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                AppRadius.button,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _metricsSection() {
    return Wrap(
      spacing: AppSpacing.md,
      runSpacing: AppSpacing.md,
      children: [
        _metricCard(
          title: "Level",
          value: "Innovator III",
          icon: Icons.workspace_premium_rounded,
        ),
        _metricCard(
          title: "Score",
          value: "845",
          icon: Icons.auto_graph_rounded,
        ),
        _metricCard(
          title: "Rank",
          value: "#04",
          icon: Icons.emoji_events_rounded,
        ),
      ],
    );
  }

  Widget _metricCard({
    required String title,
    required String value,
    required IconData icon,
  }) {
    return Container(
      width: 145,
      padding: const EdgeInsets.all(AppSpacing.md),
      decoration: BoxDecoration(
        color: AppColors.background,
        borderRadius: BorderRadius.circular(AppRadius.card),
        border: Border.all(
          color: AppColors.border,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            icon,
            size: 22,
            color: AppColors.primary,
          ),
          const SizedBox(height: AppSpacing.sm),
          Text(
            title,
            style: AppTypography.bodySmall,
          ),
          const SizedBox(height: 4),
          Text(
            value,
            style: AppTypography.titleLarge.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget _nextGoalCard() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(AppSpacing.lg),
      decoration: BoxDecoration(
        color: AppColors.background,
        borderRadius: BorderRadius.circular(AppRadius.card),
        border: Border.all(
          color: AppColors.border,
        ),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: AppColors.primary.withOpacity(.08),
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Icon(
              Icons.flag_rounded,
              color: AppColors.primary,
            ),
          ),
          const SizedBox(width: AppSpacing.md),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Next Goal",
                  style: AppTypography.titleMedium,
                ),
                const SizedBox(height: 4),
                Text(
                  "Submit your AI Innovation Project",
                  style: AppTypography.bodyMedium,
                ),
                const SizedBox(height: 6),
                Text(
                  "Reward • +100 XP",
                  style: AppTypography.bodySmall.copyWith(
                    color: Colors.green,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _profileSection() {
    return Center(
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                width: 120,
                height: 120,
                decoration: const BoxDecoration(
                  color: AppColors.background,
                  shape: BoxShape.circle,
                ),
                child: const Center(
                  child: Text(
                    "A",
                    style: TextStyle(
                      fontSize: 42,
                      fontWeight: FontWeight.bold,
                      color: AppColors.primary,
                    ),
                  ),
                ),
              ),
              Positioned(
                right: 8,
                bottom: 8,
                child: Container(
                  width: 18,
                  height: 18,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white,
                      width: 2,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: AppSpacing.md),
          Text(
            "Student",
            style: AppTypography.titleMedium,
          ),
          const SizedBox(height: 4),
          Text(
            "IA001",
            style: AppTypography.bodySmall,
          ),
        ],
      ),
    );
  }
}