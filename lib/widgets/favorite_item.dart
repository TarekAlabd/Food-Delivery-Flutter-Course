import 'package:flutter/material.dart';
import 'package:food_delivery/models/food_item.dart';

class FavoriteItem extends StatelessWidget {
  final FoodItem foodItem;
  const FavoriteItem({super.key, required this.foodItem});

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
              foodItem.imgUrl,
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
                    foodItem.name,
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  Text(
                    '\$ ${foodItem.price}',
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.deepOrange,
                    ),
                  ),
                ],
              ),
            ),
            const Icon(Icons.favorite),
          ],
        ),
      ),
    );
  }
}
