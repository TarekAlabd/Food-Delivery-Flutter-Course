import 'package:flutter/material.dart';
import 'package:food_delivery/models/food_item.dart';
import 'package:food_delivery/widgets/food_grid_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(24.0),
              child: Image.asset(
                'assets/images/classic_burger.jpg',
                height: size.height * 0.23,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: size.height * 0.04),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
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
          ],
        ),
      ),
    );
  }
}
