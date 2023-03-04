import 'package:flutter/material.dart';
import 'package:food_delivery/models/food_item.dart';

class FavoriteItem extends StatefulWidget {
  final int foodIndex;
  const FavoriteItem({super.key, required this.foodIndex});

  @override
  State<FavoriteItem> createState() => _FavoriteItemState();
}

class _FavoriteItemState extends State<FavoriteItem> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Image.network(
              food[widget.foodIndex].imgUrl,
              height: 70,
              width: 100,
              fit: BoxFit.contain,
            ),
            const SizedBox(width: 8.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    food[widget.foodIndex].name,
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  Text(
                    '\$ ${food[widget.foodIndex].price}',
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.deepOrange,
                    ),
                  ),
                ],
              ),
            ),
            IconButton(
              onPressed: () => setState(() {
                food[widget.foodIndex] =
                    food[widget.foodIndex].copyWith(isFavorite: false);
              }),
              icon: const Icon(
                Icons.favorite,
                color: Colors.deepOrange,
                size: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
