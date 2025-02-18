
import 'package:fashion/common/styles/spacing_styles.dart';
import 'package:fashion/common/widgets/login_signup/form_divider.dart';
import 'package:fashion/common/widgets/login_signup/social_buttons.dart';
import 'package:fashion/features/authentication/screens/login/login_widgets/login_form.dart';
import 'package:fashion/features/authentication/screens/login/login_widgets/login_header.dart';
import 'package:fashion/utils/constants/sizes.dart';
import 'package:fashion/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding:ZSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              // Logo, Title and Subtitle
              const LoginHeader(),

              // Login Form
              const LoginForm(),

              // Divider
              ZFormDivider(dividerText: ZTexts.orSignInWith.capitalize!),
              const SizedBox(width: ZSizes.spaceBtwItems),

              // Footer
              const ZSocialButtons(),
            ],
          ),
            
        ),
      ),
    );
  }
}

