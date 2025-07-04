import 'package:flutter/material.dart';
import 'package:e_learning/models/onboarding_item.dart';
import 'package:e_learning/core/theme/app_colors.dart';
import 'package:e_learning/views/onboarding/widgets/onboarding_page_widget.dart';
import 'package:get/get.dart';
import 'package:e_learning/routes/app_routes.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:e_learning/services/storage_service.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  final List<OnboardingItem> _pages = [
    OnboardingItem(
      image: 'assets/images/onboarding/onboarding1.png',
      title: 'Learn Anywhere',
      description:
          'Access your courses anytime, anywhere. Learn at your own pace with our flexible learning platform.',
    ),
    OnboardingItem(
      image: 'assets/images/onboarding/onboarding2.png',
      title: 'Interactive Learning',
      description: 'Engage with interactive quizzes and discussions.',
    ),
    OnboardingItem(
      image: 'assets/images/onboarding/onboarding3.png',
      title: 'Track Progress',
      description: 'Monitor your progress and achievements.',
    ),
  ];

  void _completeOnboarding() async {
    await StorageService.setFirstTime(false);
    Get.offAllNamed(AppRoutes.login);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Stack(
        children: [
          PageView.builder(
            controller: _pageController,
            itemCount: _pages.length,
            onPageChanged: (index) {
              setState(() {
                _currentPage = index;
              });
            },
            itemBuilder: (context, index) {
              return OnboardingPageWidget(page: _pages[index]);
            },
          ),

          // skip button
          Positioned(
            top: 50,
            right: 20,
            child: TextButton(
              onPressed: _completeOnboarding,
              child: const Text(
                'Skip',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),

          Positioned(
            bottom: 50,
            left: 20,
            right: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SmoothPageIndicator(
                  controller: _pageController,
                  count: _pages.length,
                  effect: const WormEffect(
                    dotColor: Colors.white54,
                    dotHeight: 10,
                    dotWidth: 10,
                    spacing: 8,
                  ),
                ),

                // next/get started button
                ElevatedButton(
                  onPressed: () {
                    if (_currentPage == _pages.length - 1) {
                      _completeOnboarding();
                    } else {
                      _pageController.nextPage(
                        duration: Duration(microseconds: 300),
                        curve: Curves.easeIn,
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 32,
                      vertical: 16,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: Text(
                    _currentPage == _pages.length - 1 ? 'Get Started' : 'Next',
                    style: const TextStyle(
                      color: AppColors.primary,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
