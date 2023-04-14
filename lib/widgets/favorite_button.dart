import 'package:flutter/material.dart';
import 'package:food_delivery/models/food_item.dart';

class FavoriteButton extends StatefulWidget {
  final int foodIndex;
  final BoxConstraints constraints;
  const FavoriteButton({
    super.key,
    required this.foodIndex,
    required this.constraints,
  });

  @override
  State<FavoriteButton> createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.constraints.maxHeight * 0.2,
      width: widget.constraints.maxWidth * 0.2,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: InkWell(
        onTap: () => setState(() {
          food[widget.foodIndex] = food[widget.foodIndex]
              .copyWith(isFavorite: !food[widget.foodIndex].isFavorite);
        }),
        child: Icon(
          food[widget.foodIndex].isFavorite
              ? Icons.favorite
              : Icons.favorite_border,
          color: Theme.of(context).primaryColor,
        ),
      ),
    );
  }
}
