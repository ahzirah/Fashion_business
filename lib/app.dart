
import 'package:fashion/utils/theme/theme.dart';
import 'package:flutter/material.dart';

class ZApp extends StatelessWidget {
  const ZApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      themeMode: ThemeMode.system,
      theme: ZAppTheme.lightTheme,
      darkTheme: ZAppTheme.darkTheme,
    );
  }
}