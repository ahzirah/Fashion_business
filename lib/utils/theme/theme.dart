
import 'package:fashion/utils/theme/custom_themes/appbar_theme.dart';
import 'package:fashion/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:fashion/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:fashion/utils/theme/custom_themes/chip_theme.dart';
import 'package:fashion/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:fashion/utils/theme/custom_themes/outlined_button.dart';
import 'package:fashion/utils/theme/custom_themes/text_theme.dart';
import 'package:fashion/utils/theme/custom_themes/textfield_theme.dart';
import 'package:flutter/material.dart';

class ZAppTheme{
  ZAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Cinzel',
    brightness: Brightness.light,
    primaryColor: Colors.purple,
    textTheme: ZTextTheme.lightTextTheme,
    chipTheme: ZChipTheme.lightChipTheme,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: ZAppBarTheme.lightAppBarTheme,
    checkboxTheme: ZCheckBoxTheme.lightCheckBoxTheme,
    bottomSheetTheme: ZBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: ZElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: ZOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: ZTextFieldFormTheme.lightInputDecorationTheme,
    
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Cinzel',
    brightness: Brightness.dark,
    primaryColor: Colors.purple,
    textTheme: ZTextTheme.darkTextTheme,
    chipTheme: ZChipTheme.darkChipTheme,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: ZAppBarTheme.darkAppBarTheme,
    checkboxTheme: ZCheckBoxTheme.darkCheckBoxTheme,
    bottomSheetTheme: ZBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: ZElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: ZOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: ZTextFieldFormTheme.darkInputDecorationTheme,
  );
}
