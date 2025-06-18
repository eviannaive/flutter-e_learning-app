import 'package:get/get.dart';
import 'package:e_learning/routes/app_routes.dart';
import 'package:e_learning/views/splash/splash_screen.dart';
import 'package:e_learning/views/onboarding/onboarding_screen.dart';
import 'package:e_learning/views/auth/login_screen.dart';
import 'package:e_learning/views/home/home_screen.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(name: AppRoutes.splash, page: () => const SplashScreen()),
    GetPage(name: AppRoutes.onboarding, page: () => const OnboardingScreen()),
    GetPage(name: AppRoutes.login, page: () => const LoginScreen()),
    GetPage(name: AppRoutes.home, page: () => const HomeScreen()),
  ];
}
