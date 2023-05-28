// Dart
import 'dart:io';
// Flutter
import 'package:flutter/material.dart';
import 'package:food_delivery/models/category_item.dart';
// Other Packages
// Internal (Files)
import 'package:food_delivery/models/food_item.dart';
import 'package:food_delivery/pages/food_details_page.dart';
import 'package:food_delivery/ui_models/food_details_args.dart';
import 'package:food_delivery/utilities/app_assets.dart';
import 'package:food_delivery/widgets/food_grid_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? categoryChosenId;
  bool enableCategoryFilter = false;
  late List<FoodItem> filteredFood;

  @override
  void initState() {
    super.initState();
    filteredFood = food;
  }

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
                AppAssets.burgerBanner,
                height: isLandscape ? size.height * 0.7 : size.height * 0.23,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: size.height * 0.04),
            SizedBox(
              height: size.height * 0.13,
              child: ListView.builder(
                itemCount: categories.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsetsDirectional.only(end: 16.0),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        if (categoryChosenId == categories[index].id || !enableCategoryFilter) {
                          enableCategoryFilter = !enableCategoryFilter;
                        }

                        if (enableCategoryFilter) {
                          categoryChosenId = categories[index].id;
                          filteredFood = food
                              .where(
                                  (item) => item.categoryId == categoryChosenId)
                              .toList();
                        } else {
                          categoryChosenId = null;
                          filteredFood = food;
                        }
                      });
                    },
                    child: Container(
                      width: size.width * 0.2,
                      decoration: BoxDecoration(
                        color: categoryChosenId == categories[index].id
                            ? Theme.of(context).primaryColor
                            : Colors.white,
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            Image.asset(categories[index].imgPath),
                            const SizedBox(height: 8.0),
                            Text(
                              categories[index].title,
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .copyWith(
                                    color:
                                        categoryChosenId == categories[index].id
                                            ? Colors.white
                                            : null,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: size.height * 0.04),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: filteredFood.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: isLandscape ? 4 : 2,
                mainAxisSpacing: size.height * 0.02,
                crossAxisSpacing: size.height * 0.02,
              ),
              itemBuilder: (context, index) => InkWell(
                onTap: () {
                  final targetedFoodItem = food
                      .firstWhere((item) => item.id == filteredFood[index].id);
                  final targetedIndex = food.indexOf(targetedFoodItem);
                  Navigator.of(context)
                      .pushNamed(
                    FoodDetailsPage.routeName,
                    arguments: FoodDetailsArgs(foodIndex: targetedIndex),
                  )
                      .then((value) {
                    setState(() {});
                    filteredFood = food;
                    categoryChosenId = null;
                    debugPrint("The value returned in home: $value");
                  });
                },
                child: FoodGridItem(
                  foodIndex: index,
                  filteredFood: filteredFood,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
