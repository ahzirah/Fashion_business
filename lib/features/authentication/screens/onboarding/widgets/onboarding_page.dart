
import 'package:fashion/utils/constants/sizes.dart';
import 'package:fashion/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key, required this.image, required this.title, required this.subtitle,
  });

  final String image, title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(ZSizes.defaultSpace),
      child: Column(
        children: [
          Image(
            width: ZHelperFunctions.screenWidth() * 0.8,
            height: ZHelperFunctions.screenHeight() * 0.7,
            image: AssetImage(image),
          ),
          Text(title, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center,),
          const SizedBox(height: ZSizes.spaceBtwItems),
          Text(subtitle, style: Theme.of(context).textTheme.bodyMedium, textAlign: TextAlign.center,),
         
        ],
      ),
    );
  }
}