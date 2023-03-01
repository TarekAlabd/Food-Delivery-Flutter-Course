import 'package:flutter/material.dart';
import 'package:food_delivery/models/food_item.dart';
import 'package:food_delivery/widgets/food_grid_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(24.0),
            child: Image.asset(
              'assets/images/classic_burger.jpg',
              height: 200,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 32.0),
          Expanded(
            child: GridView.builder(
              itemCount: food.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
              ),
              itemBuilder: (context, index) => FoodGridItem(
                foodItem: food[index],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
