import 'package:flutter/material.dart';
import 'package:e_learning/views/splash/splash_screen.dart';

class AppRoutes {
  // auth routes
  static const String splash = '/splash';

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splash:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      default:
        return MaterialPageRoute(
          builder: (_) =>
              const Scaffold(body: Center(child: Text('Page Not Found!'))),
        );
    }
  }
}
