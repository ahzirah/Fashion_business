

import 'package:fashion/features/authentication/controllers/onboarding_controller.dart';
import 'package:fashion/utils/constants/colors.dart';
import 'package:fashion/utils/constants/sizes.dart';
import 'package:fashion/utils/device/device_utility.dart';
import 'package:fashion/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = ZHelperFunctions.isDarkMode(context);
    return Positioned(
      right: ZSizes.defaultSpace,
      bottom: ZDeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        onPressed: () => OnboardingController.instance.nextPage(), 
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5)), 
            backgroundColor: dark? ZColors.primary: Colors.black,),
        child: const Icon(Iconsax.arrow_right_3),
        ),
      );
  }
}

