
import 'package:fashion/features/authentication/controllers/onboarding_controller.dart';
import 'package:fashion/utils/constants/colors.dart';
import 'package:fashion/utils/constants/sizes.dart';
import 'package:fashion/utils/device/device_utility.dart';
import 'package:fashion/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnboardingController.instance;
    final dark = ZHelperFunctions.isDarkMode(context);

    return Positioned(
      bottom: ZDeviceUtils.getBottomNavigationBarHeight() + 25,
      left: ZSizes.defaultSpace,
      child: SmoothPageIndicator(
        count: 3,
        controller: controller.pageController, 
        onDotClicked: controller.dotNavigationClick,
        effect: ExpandingDotsEffect(activeDotColor: dark? ZColors.light: ZColors.dark, dotHeight: 6 ),
        ),
    );
  }
}

