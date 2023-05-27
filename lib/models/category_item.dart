import 'package:food_delivery/utilities/app_assets.dart';

class CategoryItem {
  final String id;
  final String title;
  final String imgPath;

  CategoryItem({
    required this.id,
    required this.title,
    required this.imgPath,
  });
}

final List<CategoryItem> categories = [
  CategoryItem(id: '1', title: 'Burger', imgPath: AppAssets.burgerIcon),
  CategoryItem(id: '2', title: 'Pizza', imgPath: AppAssets.pizzaIcon),
  CategoryItem(id: '3', title: 'Pasta', imgPath: AppAssets.pastaIcon),
  CategoryItem(id: '4', title: 'Pasta', imgPath: AppAssets.pastaIcon),
  CategoryItem(id: '5', title: 'Pasta', imgPath: AppAssets.pastaIcon),
  CategoryItem(id: '6', title: 'Pasta', imgPath: AppAssets.pastaIcon),
];
