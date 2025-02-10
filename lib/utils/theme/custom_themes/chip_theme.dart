
import 'package:flutter/material.dart';

class ZChipTheme{
  ZChipTheme._();

  static ChipThemeData lightChipTheme = ChipThemeData(
    disabledColor: Colors.grey.withValues(),
    labelStyle: const TextStyle(color: Colors.black),
    selectedColor: Colors.purple,
    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: Colors.white,
  );

  static ChipThemeData darkChipTheme = ChipThemeData(
    disabledColor: Colors.grey.withValues(),
    labelStyle: const TextStyle(color: Colors.white),
    selectedColor: Colors.purple,
    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: Colors.white,
  );
}