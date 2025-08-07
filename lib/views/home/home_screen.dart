import 'package:e_learning/services/dummy_data_service.dart';
import 'package:e_learning/views/home/widgets/category_section.dart';
import 'package:e_learning/views/home/widgets/home_app_bar.dart';
import 'package:e_learning/views/home/widgets/in_progress_section.dart';
import 'package:e_learning/views/home/widgets/recommended_course_card.dart';
import 'package:e_learning/views/home/widgets/recommended_section.dart';
import 'package:e_learning/views/home/widgets/search_bar_widget.dart';
import 'package:e_learning/models/category.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<Category> categories = [
    Category(
      id: '1',
      name: 'Programming',
      icon: Icons.code,
      courseCount: DummyDataService.getCoursesByCategory('1').length,
    ),
    Category(
      id: '2',
      name: 'Design',
      icon: Icons.brush,
      courseCount: DummyDataService.getCoursesByCategory('2').length,
    ),
    Category(
      id: '3',
      name: 'Marketing',
      icon: Icons.mark_chat_read,
      courseCount: DummyDataService.getCoursesByCategory('3').length,
    ),
    Category(
      id: '4',
      name: 'Business',
      icon: Icons.business,
      courseCount: DummyDataService.getCoursesByCategory('4').length,
    ),
    Category(
      id: '5',
      name: 'Finance',
      icon: Icons.money,
      courseCount: DummyDataService.getCoursesByCategory('5').length,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        HomeAppBar(),
        SliverPadding(
          padding: EdgeInsets.all(20),
          sliver: SliverList(
            delegate: SliverChildListDelegate([
              const SearchBarWidget(),
              const SizedBox(height: 32),
              CategorySection(categories: categories),
              const SizedBox(height: 32),
              InProgressSection(),
              RecommendedSection(),
            ]),
          ),
        ),
      ],
    );
  }
}
