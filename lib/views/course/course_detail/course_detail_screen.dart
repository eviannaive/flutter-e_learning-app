import 'package:e_learning/core/theme/app_colors.dart';
import 'package:e_learning/routes/app_routes.dart';
import 'package:e_learning/services/dummy_data_service.dart';
import 'package:e_learning/views/course/course_detail/widgets/action_buttons.dart';
import 'package:e_learning/views/course/course_detail/widgets/course_detail_app_bar.dart';
import 'package:e_learning/views/course/course_detail/widgets/course_info_card.dart';
import 'package:e_learning/views/course/course_detail/widgets/lessons_list.dart';
import 'package:e_learning/views/course/course_detail/widgets/reviews_section.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CourseDetailScreen extends StatefulWidget {
  final String courseId;

  const CourseDetailScreen({super.key, required this.courseId});

  @override
  State<CourseDetailScreen> createState() => _CourseDetailScreenState();
}

class _CourseDetailScreenState extends State<CourseDetailScreen> {
  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose(); // 釋放資源
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    // 如果是付款成功回來，可根據參數觸發捲動
    final fromPayment = Get.parameters['fromPayment'] == 'true';
    if (fromPayment) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _scrollController.animateTo(
          0,
          duration: const Duration(milliseconds: 400),
          curve: Curves.easeOut,
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final lastLesson = Get.parameters['lastLesson'];
    final id = Get.parameters['id'] ?? widget.courseId;
    final course = DummyDataService.getCourseById(id);
    final isCompleted = DummyDataService.isCourseCompleted(course.id);
    final isUnlocked = DummyDataService.isCourseUnlocked(course.id);

    return Scaffold(
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          CourseDetailAppBar(imageUrl: course.imageUrl),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    course.title,
                    style: theme.textTheme.headlineMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      const Icon(Icons.star, color: Colors.amber),
                      const SizedBox(width: 4),
                      Text(
                        course.rating.toString(),
                        style: theme.textTheme.bodyMedium,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        '(${course.reviewCount} reviews)',
                        style: theme.textTheme.bodyMedium?.copyWith(
                          color: theme.colorScheme.secondary,
                        ),
                      ),
                      const Spacer(),
                      Text(
                        '\$${course.price}',
                        style: theme.textTheme.titleLarge?.copyWith(
                          color: AppColors.success,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Text(course.description, style: theme.textTheme.bodyLarge),
                  const SizedBox(height: 16),
                  CourseInfoCard(course: course),
                  const SizedBox(height: 24),
                  Text(
                    'Course Content',
                    style: theme.textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  LessonsList(
                    courseId: widget.courseId,
                    isUnlocked: isUnlocked,
                    onLessonComplete: () => setState(() {}),
                  ),
                  const SizedBox(height: 24),
                  ReviewsSection(courseId: widget.courseId),
                  const SizedBox(height: 16),
                  ActionButtons(course: course),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: course.isPremium && !isUnlocked
          ? Container(
              padding: const EdgeInsets.only(
                left: 16,
                top: 10,
                right: 16,
                bottom: 26,
              ),
              decoration: BoxDecoration(
                color: theme.scaffoldBackgroundColor,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 10,
                    offset: const Offset(0, -5),
                  ),
                ],
              ),
              child: ElevatedButton(
                onPressed: () {
                  // navigate to payment screen
                  Get.toNamed(
                    AppRoutes.payment,
                    arguments: {
                      'courseId': course.id,
                      'courseName': course.title,
                      'price': course.price,
                    },
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primary,
                  padding: const EdgeInsets.all(16),
                ),
                child: Text('Buy Now for \$${course.price}'),
              ),
            )
          : null,
    );
  }
}
