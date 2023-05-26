import 'package:flutter/material.dart';
import 'package:food_delivery/models/food_item.dart';
import 'package:food_delivery/ui_models/food_details_args.dart';
import 'package:food_delivery/widgets/custom_back_button.dart';
import 'package:food_delivery/widgets/favorite_button.dart';
import 'package:food_delivery/widgets/food_details/food_item_counter.dart';
import 'package:food_delivery/widgets/food_details/property_item.dart';

class FoodDetailsPage extends StatelessWidget {
  const FoodDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final FoodDetailsArgs foodArgs =
        ModalRoute.of(context)!.settings.arguments as FoodDetailsArgs;
    final foodIndex = foodArgs.foodIndex;

    return Scaffold(
      // appBar: AppBar(),
      body: SafeArea(
        top: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: CustomScrollView(
                slivers: [
                  SliverAppBar(
                    leading: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CustomBackButton(
                        onTap: () => Navigator.of(context)
                            .pop<String>(food[foodIndex].name),
                        width: size.width * 0.09,
                        height: size.height * 0.04,
                      ),
                    ),
                    actions: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: FavoriteButton(
                          foodIndex: foodIndex,
                          width: size.width * 0.1,
                          height: size.height * 0.04,
                        ),
                      ),
                    ],
                    expandedHeight: size.height * 0.35,
                    pinned: true,
                    flexibleSpace: FlexibleSpaceBar(
                      background: DecoratedBox(
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.15),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 24.0),
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Image.network(
                              food[foodIndex].imgUrl,
                              fit: BoxFit.contain,
                              height: size.height * 0.28,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SliverPadding(
                    padding: const EdgeInsets.only(
                      left: 16.0,
                      right: 16.0,
                      top: 16.0,
                      bottom: 46.0,
                    ),
                    sliver: SliverList(
                      delegate: SliverChildListDelegate([
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  food[foodIndex].name,
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineSmall!
                                      .copyWith(
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                                const SizedBox(height: 6.0),
                                Text(
                                  'Buffalo Burger',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .copyWith(
                                        color: Colors.grey,
                                      ),
                                ),
                              ],
                            ),
                            const FoodItemCounter(),
                          ],
                        ),
                        const SizedBox(height: 32.0),
                        const IntrinsicHeight(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              PropertyItem(
                                  propertyName: 'Size',
                                  propertyValue: 'Medium'),
                              VerticalDivider(
                                indent: 0,
                                endIndent: 0,
                              ),
                              PropertyItem(
                                  propertyName: 'Calories',
                                  propertyValue: '150 Kcal'),
                              VerticalDivider(
                                indent: 0,
                                endIndent: 0,
                              ),
                              PropertyItem(
                                  propertyName: 'Cooking',
                                  propertyValue: '10-20 Min'),
                            ],
                          ),
                        ),
                        const SizedBox(height: 16.0),
                        Text(
                          'Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem',
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    color: Colors.grey,
                                  ),
                        ),
                      ]),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
              child: Row(
                children: [
                  Text(
                    '\$ ${food[foodIndex].price}',
                    style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  const SizedBox(width: 46.0),
                  Expanded(
                    child: SizedBox(
                      height: size.height * 0.058,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text('Checkout'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
