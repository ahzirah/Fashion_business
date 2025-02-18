
import 'package:fashion/utils/constants/colors.dart';
import 'package:fashion/utils/constants/text_strings.dart';
import 'package:fashion/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ZFormDivider extends StatelessWidget {
  const ZFormDivider({super.key,required this.dividerText,});

  final String dividerText;

  @override
  Widget build(BuildContext context) {
    final dark = ZHelperFunctions.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(child: Divider(color: dark ? ZColors.darkGrey: ZColors.grey, thickness: 0.5, indent: 60, endIndent: 5)),
        Text(ZTexts.orSignInWith.capitalize!, style: Theme.of(context).textTheme.labelMedium),
        Flexible(child: Divider(color: dark ? ZColors.darkGrey: ZColors.grey, thickness: 0.5, indent: 5, endIndent: 60)),
    
      ],
    );
  }
}

