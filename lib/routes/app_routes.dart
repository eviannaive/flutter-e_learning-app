import 'package:e_learning/views/course/course_list/course_list_screen.dart';
import 'package:e_learning/views/main_screen.dart';
import 'package:e_learning/views/profile/profile_screen.dart';
import 'package:e_learning/views/quiz/quiz_list/quiz_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:e_learning/views/splash/splash_screen.dart';
import 'package:e_learning/views/onboarding/onboarding_screen.dart';
import 'package:e_learning/views/auth/login_screen.dart';
import 'package:e_learning/views/auth/forgot_password_screen.dart';
import 'package:e_learning/views/auth/register_screen.dart';
import 'package:e_learning/views/home/home_screen.dart';
import 'package:e_learning/views/teacher/teacher_home_screen.dart';

class AppRoutes {
  static const String main = '/main';

  // auth routes
  static const String splash = '/splash';
  static const String onboarding = '/onboarding';
  static const String register = '/register';
  static const String forgotPassword = '/forgot-password';
  static const String login = '/login';
  static const String home = '/home';

  // course routes
  static const String courseList = '/courses';

  // quiz routes
  static const String quizList = '/quizzes';

  // profile routes
  static const String profile = '/profile';

  // teacher routes
  static const String teacherHome = '/teacher/home';

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splash:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case onboarding:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      case login:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case register:
        return MaterialPageRoute(builder: (_) => const RegisterScreen());
      case forgotPassword:
        return MaterialPageRoute(builder: (_) => const ForgotPasswordScreen());
      case main:
        return MaterialPageRoute(
          builder: (_) => MainScreen(
            initialIndex: settings.arguments is Map
                ? (settings.arguments as Map<String, dynamic>)['initialIndex']
                      as int?
                : null,
          ),
        );
      case home:
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case teacherHome:
        return MaterialPageRoute(builder: (_) => const TeacherHomeScreen());
      case courseList:
        return MaterialPageRoute(builder: (_) => const CourseListScreen());
      case quizList:
        return MaterialPageRoute(builder: (_) => const QuizListScreen());
      case profile:
        return MaterialPageRoute(builder: (_) => const ProfileScreen());
      default:
        return MaterialPageRoute(
          builder: (_) =>
              const Scaffold(body: Center(child: Text('Page Not Found!'))),
        );
    }
  }
}
