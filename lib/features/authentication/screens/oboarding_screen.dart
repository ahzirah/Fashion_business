
import 'package:fashion/utils/constants/image_strings.dart';
import 'package:fashion/utils/constants/sizes.dart';
import 'package:fashion/utils/constants/text_strings.dart';
import 'package:fashion/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            children: [
              Column(
                children: [
                  Image(
                    width: ZHelperFunctions.screenWidth() * 0.8,
                    height: ZHelperFunctions.screenHeight() * 0.6,
                    image: const AssetImage(ZImages.onBoadingImage1),
                  ),
                  Text(
                    ZTexts.onBoardingTitle1, 
                    style: Theme.of(context).textTheme.headlineMedium, 
                    textAlign: TextAlign.center,
                    ),
                  const SizedBox(height: ZSizes.spaceBtwItems),
                  Text(
                    ZTexts.onBoardingSubTitle1, 
                    style: Theme.of(context).textTheme.bodyMedium, 
                    textAlign: TextAlign.center,
                    ),
                 
                ],
              )

            ],
          )

        ],
      )
    );
  }
}