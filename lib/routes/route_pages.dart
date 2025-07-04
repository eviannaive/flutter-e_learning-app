import 'package:e_learning/views/course/course_list/course_list_screen.dart';
import 'package:e_learning/views/main_screen.dart';
import 'package:e_learning/views/profile/profile_screen.dart';
import 'package:e_learning/views/quiz/quiz_list/quiz_list_screen.dart';
import 'package:get/get.dart';
import 'package:e_learning/routes/app_routes.dart';
import 'package:e_learning/views/splash/splash_screen.dart';
import 'package:e_learning/views/onboarding/onboarding_screen.dart';
import 'package:e_learning/views/auth/login_screen.dart';
import 'package:e_learning/views/auth/forgot_password_screen.dart';
import 'package:e_learning/views/auth/register_screen.dart';
import 'package:e_learning/views/home/home_screen.dart';
import 'package:e_learning/views/teacher/teacher_home_screen.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(name: AppRoutes.splash, page: () => const SplashScreen()),
    GetPage(name: AppRoutes.onboarding, page: () => const OnboardingScreen()),
    GetPage(name: AppRoutes.login, page: () => const LoginScreen()),
    GetPage(name: AppRoutes.register, page: () => const RegisterScreen()),
    GetPage(
      name: AppRoutes.forgotPassword,
      page: () => const ForgotPasswordScreen(),
    ),
    GetPage(
      name: AppRoutes.main,
      page: () => MainScreen(
        initialIndex: Get.arguments is Map<String, dynamic>
            ? Get.arguments['initialIndex'] as int?
            : null,
      ),
    ),
    GetPage(name: AppRoutes.home, page: () => HomeScreen()),
    GetPage(name: AppRoutes.courseList, page: () => const CourseListScreen()),
    GetPage(name: AppRoutes.quizList, page: () => const QuizListScreen()),
    GetPage(name: AppRoutes.profile, page: () => const ProfileScreen()),
    GetPage(name: AppRoutes.teacherHome, page: () => const TeacherHomeScreen()),
  ];
}
