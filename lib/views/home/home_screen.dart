import 'package:e_learning/views/home/widgets/category_section.dart';
import 'package:e_learning/views/home/widgets/home_app_bar.dart';
import 'package:e_learning/views/home/widgets/search_bar_widget.dart';
import 'package:e_learning/models/category.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<Category> categories = [
    Category(id: '1', name: 'Programming', icon: Icons.code, courseCount: 1),
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
              const SizedBox(height: 20),
              CategorySection(categories: categories),
            ]),
          ),
        ),
      ],
    );
  }
}
