import 'package:flutter/material.dart';
import 'package:food_delivery/models/food_item.dart';

class FoodDetailsPage extends StatelessWidget {
  final FoodItem foodItem;
  const FoodDetailsPage({super.key, required this.foodItem});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(foodItem.name),
      ),
    );
  }
}
