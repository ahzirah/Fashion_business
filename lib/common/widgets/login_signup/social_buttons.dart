
import 'package:fashion/utils/constants/colors.dart';
import 'package:fashion/utils/constants/image_strings.dart';
import 'package:fashion/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class ZSocialButtons extends StatelessWidget {
  const ZSocialButtons({super.key,});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(border: Border.all(color: ZColors.grey), borderRadius: BorderRadius.circular(50)),
          child: IconButton(
            onPressed: () {}, 
            icon: const Image(
              width: ZSizes.iconMd,
              height: ZSizes.iconMd,
              image: AssetImage(ZImages.google),
              ),
            ),
        ),
        const SizedBox(width: ZSizes.spaceBtwItems),
        Container(
          decoration: BoxDecoration(border: Border.all(color: ZColors.grey), borderRadius: BorderRadius.circular(50)),
          child: IconButton(
            onPressed: () {}, 
            icon: const Image(
              width: ZSizes.iconMd,
              height: ZSizes.iconMd,
              image: AssetImage(ZImages.instagram),
              ),
            ),
        ),
      ],
    );
  }
}

