import 'package:e_learning/core/theme/app_colors.dart';
import 'package:e_learning/routes/app_routes.dart';
import 'package:e_learning/views/widgets/common/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PaymentSuccessDialog extends StatelessWidget {
  const PaymentSuccessDialog({super.key});

  @override
  Widget build(BuildContext context) {
    final courseId = Get.arguments['courseId'];
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.check_circle, color: AppColors.primary, size: 64),
            const SizedBox(height: 16),
            Text(
              'Payment Successful',
              style: Get.textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'You can now access the course content.',
              style: Get.textTheme.bodyMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            SizedBox(
              width: double.infinity,
              child: CustomButton(
                text: 'Start Learning',
                onPressed: () {
                  Get.back();
                  // Get.back();
                  Get.offNamed(
                    '${AppRoutes.courseDetail}?id=$courseId&fromPayment=true',
                  );
                },
                height: 56,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
