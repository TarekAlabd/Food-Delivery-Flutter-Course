class FoodItem {
  final String name;
  final String imgUrl;
  final double price;
  final bool isFavorite;

  FoodItem({
    required this.name,
    required this.imgUrl,
    required this.price,
    this.isFavorite = false,
  });
}

List<FoodItem> food = [
  FoodItem(
    name: 'Beef Burger',
    imgUrl:
        'https://www.freepnglogos.com/uploads/burger-png/download-hamburger-burger-png-image-png-image-pngimg-15.png',
    price: 8.5,
    isFavorite: true,
  ),
  FoodItem(
    name: 'Chicken Burger',
    imgUrl: 'https://www.pngarts.com/files/3/Chicken-Burger-PNG-Photo.png',
    price: 8.5,
    isFavorite: true,
  ),
  FoodItem(
    name: 'Cheese Burger',
    imgUrl:
        'https://www.pngmart.com/files/16/Cheese-Burger-PNG-Transparent-Image.png',
    price: 8,
  ),
  FoodItem(
    name: 'Chicken Pizza',
    imgUrl:
        'https://graficsea.com/wp-content/uploads/2021/12/Chicken-Supreme-Pizza-.png',
    price: 9,
    isFavorite: true,
  ),
  FoodItem(
    name: 'Pasta',
    imgUrl:
        'https://www.pngall.com/wp-content/uploads/2018/04/Pasta-PNG-Image.png',
    price: 7,
  ),
];
