
import 'package:fashion/features/authentication/controllers/onboarding_controller.dart';
import 'package:fashion/utils/constants/sizes.dart';
import 'package:fashion/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: ZDeviceUtils.getAppBarHeight(), 
      right: ZSizes.defaultSpace, 
      child: TextButton(
        onPressed: () => OnboardingController.instance.skipPage(), 
        child: const Text('Skip'),
        ),
      );
  }
}