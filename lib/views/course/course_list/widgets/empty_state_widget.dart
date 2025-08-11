import 'package:e_learning/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EmptyStateWidget extends StatelessWidget {
  final String title;
  final String message;
  final VoidCallback? onActionPressed;
  final String actionLabel;
  final IconData icon;

  const EmptyStateWidget({
    super.key,
    this.title = "No Courses Found",
    this.message = "there are no courses available in this category yet",
    this.onActionPressed,
    this.actionLabel = "Go Back",
    this.icon = Icons.school_outlined,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 80, color: AppColors.primary.withOpacity(0.5)),
          const SizedBox(height: 16),
          Text(
            title,
            style: theme.textTheme.headlineSmall?.copyWith(
              color: AppColors.primary,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            message,
            style: theme.textTheme.bodyLarge?.copyWith(
              color: AppColors.secondary,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8),
          ElevatedButton.icon(
            onPressed: onActionPressed ?? () => Get.back(),
            label: Text(actionLabel),
            icon: const Icon(Icons.arrow_back),
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            ),
          ),
        ],
      ),
    );
  }
}
