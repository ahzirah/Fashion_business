
import 'package:fashion/utils/constants/sizes.dart';
import 'package:fashion/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key,});

  @override
  Widget build(BuildContext context) {
    return Form(
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
          
          ],
        ),
      ),
    );
  }
}

