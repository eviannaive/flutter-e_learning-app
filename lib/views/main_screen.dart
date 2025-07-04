import 'package:e_learning/views/course/course_list/course_list_screen.dart';
import 'package:e_learning/views/home/home_screen.dart';
import 'package:e_learning/views/quiz/quiz_list/quiz_list_screen.dart';
import 'package:e_learning/views/profile/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:e_learning/core/theme/app_colors.dart';
import 'package:e_learning/bloc/navigation/navigation_state.dart';
import 'package:e_learning/bloc/navigation/navigation_bloc.dart';
import 'package:e_learning/bloc/navigation/navigation_event.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class MainScreen extends StatelessWidget {
  final int? initialIndex;

  const MainScreen({super.key, this.initialIndex});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          NavigationBloc()..add(NavigateToTab(initialIndex ?? 0)),
      child: BlocBuilder<NavigationBloc, NavigationState>(
        builder: (context, state) {
          return Scaffold(
            backgroundColor: AppColors.lightBackground,
            body: IndexedStack(
              index: state.currentIndex,
              children: [
                HomeScreen(),
                const CourseListScreen(),
                const QuizListScreen(),
                const ProfileScreen(),
              ],
            ),
            bottomNavigationBar: NavigationBar(
              backgroundColor: AppColors.primaryLight,
              indicatorColor: AppColors.primary.withOpacity(0.8),
              destinations: [
                NavigationDestination(
                  icon: Icon(Icons.home_outlined),
                  selectedIcon: Icon(Icons.home),
                  label: 'Home',
                ),
                NavigationDestination(
                  icon: Icon(Icons.play_lesson_outlined),
                  selectedIcon: Icon(Icons.play_lesson),
                  label: 'My Courses',
                ),
                NavigationDestination(
                  icon: Icon(Icons.quiz_outlined),
                  selectedIcon: Icon(Icons.quiz),
                  label: 'Quizzes',
                ),
                NavigationDestination(
                  icon: Icon(Icons.person_outline),
                  selectedIcon: Icon(Icons.person),
                  label: 'Profile',
                ),
              ],
              selectedIndex: state.currentIndex,
              onDestinationSelected: (index) {
                context.read<NavigationBloc>().add(NavigateToTab(index));
              },
            ),
          );
        },
      ),
    );
  }
}
