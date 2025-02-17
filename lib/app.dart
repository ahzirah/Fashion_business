
import 'package:fashion/features/authentication/screens/onboarding/oboarding_screen.dart';
import 'package:fashion/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

class ZApp extends StatelessWidget {
  const ZApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: ZAppTheme.lightTheme,
      darkTheme: ZAppTheme.darkTheme,
      home: OnboardingScreen(),
    );
  }
}