import 'package:flutter/material.dart';
import 'package:e_learning/views/splash/splash_screen.dart';
import 'package:e_learning/views/onboarding/onboarding_screen.dart';
import 'package:e_learning/views/auth/login_screen.dart';
import 'package:e_learning/views/auth/forgot_password_screen.dart';
import 'package:e_learning/views/auth/register_screen.dart';
import 'package:e_learning/views/home/home_screen.dart';
import 'package:e_learning/views/teacher/teacher_home_screen.dart';

class AppRoutes {
  // auth routes
  static const String splash = '/splash';
  static const String onboarding = '/onboarding';
  static const String register = '/register';
  static const String forgotPassword = '/forgot-password';
  static const String login = '/login';
  static const String home = '/home';
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
      case home:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case teacherHome:
        return MaterialPageRoute(builder: (_) => const TeacherHomeScreen());
      default:
        return MaterialPageRoute(
          builder: (_) =>
              const Scaffold(body: Center(child: Text('Page Not Found!'))),
        );
    }
  }
}
