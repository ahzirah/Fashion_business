
import 'package:fashion/common/styles/spacing_styles.dart';
import 'package:fashion/utils/constants/colors.dart';
import 'package:fashion/utils/constants/image_strings.dart';
import 'package:fashion/utils/constants/sizes.dart';
import 'package:fashion/utils/constants/text_strings.dart';
import 'package:fashion/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = ZHelperFunctions.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding:ZSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              // Logo, Title and Subtitle
              Column(
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

              ),

              // Login Form
              Form(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: ZSizes.spaceBtwSections ),
                  child: Column(
                    children: [
                      // Email
                      TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Iconsax.direct_right), 
                          labelText: ZTexts.email),
                      ),
                      const SizedBox(height: ZSizes.spaceBtwInputFields),
                  
                      // Password
                      TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Iconsax.password_check), 
                          labelText: ZTexts.password, 
                          suffixIcon: Icon(Iconsax.eye),
                        ),
                      ),
                      const SizedBox(height: ZSizes.spaceBtwInputFields/2),
                  
                      // Remember Me and Forgot Password
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        // Remember Me
                        Row(
                          children: [
                            Checkbox(value: true, onChanged: (value) {}),
                            const Text(ZTexts.rememberMe),
                          ],
                        ),
                  
                        //Forgot Password
                        TextButton(onPressed: () {}, child: const Text(ZTexts.forgotPassword)),
                        ],
                      ),
                      const SizedBox(height: ZSizes.spaceBtwSections),
                  
                      // Sign In Button
                      SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () {}, child: Text(ZTexts.signIn))),
                      const SizedBox(height: ZSizes.spaceBtwItems),
                  
                      // Create Account Button
                      SizedBox(width: double.infinity, child: OutlinedButton(onPressed: () {}, child: Text(ZTexts.createAccount))),
                      const SizedBox(height: ZSizes.spaceBtwSections),
                    ],
                  ),
                ),
              ),

              // Divider
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Divider(color: dark ? ZColors.darkGrey: ZColors.grey, thickness: 0.5, indent: 60, endIndent: 5),
                ],
              ),

              // Footer
            ],
          ),
            
        ),
      ),
    );
  }
}