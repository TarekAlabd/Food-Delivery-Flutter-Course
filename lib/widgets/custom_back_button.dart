import 'dart:io';

import 'package:flutter/material.dart';
import 'package:food_delivery/widgets/custom_secondary_button.dart';

class CustomBackButton extends StatelessWidget {
  final double width;
  final double height;
  const CustomBackButton({
    super.key,
    required this.height,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return CustomSecondaryButton(
      width: width,
      height: height,
      onTap: () => Navigator.of(context).pop(),
      iconData:
          Platform.isIOS ? Icons.arrow_back_ios_new_rounded : Icons.arrow_back,
    );
  }
}
