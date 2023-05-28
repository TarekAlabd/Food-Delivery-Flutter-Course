class FoodItem {
  final String id;
  final String name;
  final String imgUrl;
  final double price;
  final bool isFavorite;
  final String categoryId;

  const FoodItem({
    required this.id,
    required this.name,
    required this.imgUrl,
    required this.price,
    required this.categoryId,
    this.isFavorite = false,
  });

  FoodItem copyWith({
    String? id,
    String? name,
    String? imgUrl,
    double? price,
    bool? isFavorite,
    String? categoryId,
  }) {
    return FoodItem(
      id: id ?? this.id,
      name: name ?? this.name,
      imgUrl: imgUrl ?? this.imgUrl,
      price: price ?? this.price,
      isFavorite: isFavorite ?? this.isFavorite,
      categoryId: categoryId ?? this.categoryId,
    );
  }
}

List<FoodItem> food = [
  FoodItem(
    id: 'burger 1',
    name: 'Beef Burger',
    imgUrl:
        'https://www.freepnglogos.com/uploads/burger-png/download-hamburger-burger-png-image-png-image-pngimg-15.png',
    price: 8.5,
    categoryId: '1',
  ),
  FoodItem(
    id: 'burger 2',
    name: 'Chicken Burger',
    imgUrl: 'https://www.pngarts.com/files/3/Chicken-Burger-PNG-Photo.png',
    price: 8.5,
    categoryId: '1',
  ),
  FoodItem(
    id: 'burger 3',
    name: 'Cheese Burger',
    imgUrl: 'https://www.pngarts.com/files/3/Chicken-Burger-PNG-Photo.png',
    price: 8,
    categoryId: '1',
  ),
  FoodItem(
    id: 'pizza 1',
    name: 'Chicken Pizza',
    imgUrl:
        'https://graficsea.com/wp-content/uploads/2021/12/Chicken-Supreme-Pizza-.png',
    price: 9,
    categoryId: '2',
  ),
  FoodItem(
    id: 'pasta 1',
    name: 'Pasta',
    imgUrl:
        'https://www.pngall.com/wp-content/uploads/2018/04/Pasta-PNG-Image.png',
    price: 7,
    categoryId: '3',
  ),
  FoodItem(
    id: 'pasta 2',
    name: 'Pasta2',
    imgUrl:
        'https://www.pngall.com/wp-content/uploads/2018/04/Pasta-PNG-Image.png',
    price: 7,
    categoryId: '4',
  ),
  FoodItem(
    id: 'pasta 3',
    name: 'Pasta3',
    imgUrl:
        'https://www.pngall.com/wp-content/uploads/2018/04/Pasta-PNG-Image.png',
    price: 7,
    categoryId: '5',
  ),
  FoodItem(
    id: 'pasta 4',
    name: 'Pasta4',
    imgUrl:
        'https://www.pngall.com/wp-content/uploads/2018/04/Pasta-PNG-Image.png',
    price: 7,
    categoryId: '6',
  ),
];
