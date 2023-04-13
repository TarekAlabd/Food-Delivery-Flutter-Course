class FoodItem {
  final String name;
  final String imgUrl;
  final double price;
  final bool isFavorite;

  const FoodItem({
    required this.name,
    required this.imgUrl,
    required this.price,
    this.isFavorite = false,
  });

  FoodItem copyWith({
    String? name,
    String? imgUrl,
    double? price,
    bool? isFavorite,
  }) {
    return FoodItem(
      name: name ?? this.name,
      imgUrl: imgUrl ?? this.imgUrl,
      price: price ?? this.price,
      isFavorite: isFavorite ?? this.isFavorite,
    );
  }
}

List<FoodItem> food = [
  FoodItem(
    name: 'Beef Burger',
    imgUrl:
        'https://cdn.shopify.com/s/files/1/0681/8716/0850/products/002_4.jpg',
    price: 8.5,
  ),
  FoodItem(
    name: 'Chicken Burger',
    imgUrl: 'https://www.pngarts.com/files/3/Chicken-Burger-PNG-Photo.png',
    price: 8.5,
  ),
  FoodItem(
    name: 'Cheese Burger',
    imgUrl:
        'https://www.pngarts.com/files/3/Chicken-Burger-PNG-Photo.png',
    price: 8,
  ),
  FoodItem(
    name: 'Chicken Pizza',
    imgUrl:
        'https://graficsea.com/wp-content/uploads/2021/12/Chicken-Supreme-Pizza-.png',
    price: 9,
  ),
  FoodItem(
    name: 'Pasta',
    imgUrl:
        'https://www.pngall.com/wp-content/uploads/2018/04/Pasta-PNG-Image.png',
    price: 7,
  ),
];
