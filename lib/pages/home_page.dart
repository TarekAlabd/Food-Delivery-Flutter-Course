// Dart
import 'dart:io';
// Flutter
import 'package:flutter/material.dart';
// Other Packages
// Internal (Files)
import 'package:food_delivery/models/food_item.dart';
import 'package:food_delivery/pages/food_details_page.dart';
import 'package:food_delivery/ui_models/food_details_args.dart';
import 'package:food_delivery/widgets/food_grid_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(24.0),
              child: Image.asset(
                'assets/images/classic_burger.jpg',
                height: isLandscape ? size.height * 0.7 : size.height * 0.23,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: size.height * 0.04),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: food.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: isLandscape ? 4 : 2,
                mainAxisSpacing: size.height * 0.02,
                crossAxisSpacing: size.height * 0.02,
              ),
              itemBuilder: (context, index) => InkWell(
                onTap: () {
                  Navigator.of(context)
                      .pushNamed(
                    FoodDetailsPage.routeName,
                    arguments: FoodDetailsArgs(foodIndex: index),
                  )
                      .then((value) {
                    setState(() {});
                    debugPrint("The value returned in home: $value");
                  });
                },
                child: FoodGridItem(
                  foodIndex: index,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
