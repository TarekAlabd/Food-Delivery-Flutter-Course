import 'package:flutter/material.dart';
import 'package:food_delivery/models/food_item.dart';
import 'package:food_delivery/widgets/custom_secondary_button.dart';

class FavoriteButton extends StatefulWidget {
  final int foodIndex;
  final double height;
  final double width;
  const FavoriteButton({
    super.key,
    required this.foodIndex,
    required this.width,
    required this.height,
  });

  @override
  State<FavoriteButton> createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  @override
  Widget build(BuildContext context) {
    return CustomSecondaryButton(
      width: widget.width,
      height: widget.height,
      onTap: () => setState(() {
        food[widget.foodIndex] = food[widget.foodIndex]
            .copyWith(isFavorite: !food[widget.foodIndex].isFavorite);
      }),
      iconData: food[widget.foodIndex].isFavorite
          ? Icons.favorite
          : Icons.favorite_border,
    );
  }
}
