import 'package:flutter/material.dart';

import '../../../core/design_system/design_system.dart';

class DashboardCard extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry? padding;
  final VoidCallback? onTap;
  final double? width;
  final double? height;
  final Color? color;

  const DashboardCard({
    super.key,
    required this.child,
    this.padding,
    this.onTap,
    this.width,
    this.height,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    final card = AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      width: width,
      height: height,
      padding: padding ?? const EdgeInsets.all(AppSpacing.lg),
      decoration: BoxDecoration(
        color: color ?? Colors.white,
        borderRadius: BorderRadius.circular(AppRadius.card),
        boxShadow: const [
          AppShadows.small,
        ],
        border: Border.all(
          color: AppColors.border,
          width: 1,
        ),
      ),
      child: child,
    );

    if (onTap == null) return card;

    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(AppRadius.card),
        onTap: onTap,
        child: card,
      ),
    );
  }
}