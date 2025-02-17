
import 'package:fashion/features/authentication/controllers/onboarding_controller.dart';
import 'package:fashion/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:fashion/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:fashion/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:fashion/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:fashion/utils/constants/image_strings.dart';
import 'package:fashion/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());
    
    return Scaffold(
      body: Stack(
        children: [
            // Horizontal Scrollable Pages
          PageView(
            controller : controller.pageController,
            onPageChanged: controller.updatePageIndicator ,
            children: const [
              OnBoardingPage(
                image: ZImages.onBoardingImage1, 
                title: ZTexts.onBoardingTitle1, 
                subtitle: ZTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: ZImages.onBoardingImage2, 
                title: ZTexts.onBoardingTitle2, 
                subtitle: ZTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: ZImages.onBoardingImage3, 
                title: ZTexts.onBoardingTitle3, 
                subtitle: ZTexts.onBoardingSubTitle3,
              ),

            ],
          ),

            // Skip Button
          const OnBoardingSkip(),

            // Dot Navigation Smooth Page Indicator
          const OnBoardingDotNavigation(),

            // Next Button
          const OnBoardingNextButton(),


        ],
      )
    );
  }
}
