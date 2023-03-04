import 'package:flutter/material.dart';
import 'package:food_delivery/models/food_item.dart';

class FoodGridItem extends StatefulWidget {
  final int foodIndex;
  const FoodGridItem({
    super.key,
    required this.foodIndex,
  });

  @override
  State<FoodGridItem> createState() => _FoodGridItemState();
}

class _FoodGridItemState extends State<FoodGridItem> {
  @override
  Widget build(BuildContext context) {
    
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Stack(
              children: [
                Image.network(
                  food[widget.foodIndex].imgUrl,
                  height: 100,
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: InkWell(
                      onTap: () => setState(() {
                        food[widget.foodIndex] = food[widget.foodIndex]
                            .copyWith(
                                isFavorite: !food[widget.foodIndex].isFavorite);
                      }),
                      child: Icon(
                        food[widget.foodIndex].isFavorite
                            ? Icons.favorite
                            : Icons.favorite_border,
                        color: Colors.deepOrange,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8.0),
            Text(
              food[widget.foodIndex].name,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 4.0),
            Text(
              '\$ ${food[widget.foodIndex].price}',
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.deepOrange,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
