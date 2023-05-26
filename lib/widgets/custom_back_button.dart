import 'dart:io';

import 'package:flutter/material.dart';
import 'package:food_delivery/widgets/custom_secondary_button.dart';

class CustomBackButton extends StatelessWidget {
  final double width;
  final double height;
  final VoidCallback onTap;

  const CustomBackButton({
    super.key,
    required this.height,
    required this.width,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return CustomSecondaryButton(
      width: width,
      height: height,
      onTap: onTap,
      iconData:
          Platform.isIOS ? Icons.arrow_back_ios_new_rounded : Icons.arrow_back,
    );
  }
}
