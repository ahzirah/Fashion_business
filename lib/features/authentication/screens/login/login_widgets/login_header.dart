
import 'package:fashion/utils/constants/image_strings.dart';
import 'package:fashion/utils/constants/sizes.dart';
import 'package:fashion/utils/constants/text_strings.dart';
import 'package:fashion/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({super.key,});


  @override
  Widget build(BuildContext context) {
    final dark = ZHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          height: 150,
          image: AssetImage(dark ? ZImages.lightAppLogo: ZImages.darkAppLogo),
          ),
         Text(ZTexts.homeAppBarTitle, style: Theme.of(context).textTheme.headlineMedium),
         const SizedBox(height: ZSizes.sm),
         Text(ZTexts.homeAppBarSubtitle, style: Theme.of(context).textTheme.bodyMedium),
      ],
    
    );
  }
}