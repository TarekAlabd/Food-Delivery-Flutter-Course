import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdaptiveFavButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  const AdaptiveFavButton({
    super.key,
    required this.onPressed,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;

    return Platform.isIOS
        ? CupertinoButton(
            onPressed: onPressed,
            child: Row(
              children: [
                const Icon(CupertinoIcons.heart_fill),
                const SizedBox(width: 6.0),
                Text(title),
              ],
            ),
          )
        : TextButton.icon(
            icon: Icon(
              Icons.favorite,
              color: Theme.of(context).primaryColor,
              size: isLandscape ? size.height * 0.08 : size.height * 0.035,
            ),
            onPressed: onPressed,
            label: Text(
              title,
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: Theme.of(context).primaryColor,
                  ),
            ),
          );
  }
}
