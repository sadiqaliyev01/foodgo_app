import 'package:foodgo_app/utils/constants/app_assets.dart';

class AllProductsModel {
  const AllProductsModel({
    required this.productImage,
    required this.productName,
    required this.productDescription,
    required this.rate,
    required this.id,
    required this.productLongDescription,
  });

  final String productImage;
  final String productName;
  final String productDescription;
  final double rate;
  final int id;
  final String productLongDescription;

  static const List<AllProductsModel> getProducts = [
    AllProductsModel(
        productImage: AppAssets.product1,
        productName: "CheeseBurger",
        productDescription: "Wendy's Burger",
        rate: 4.9,
        id: 0,
        productLongDescription:
            "The Cheeseburger Wendy's Burger is a classic fast food burger that packs a punch of flavor in every bite. Made with a juicy beef patty cooked to perfection, it's topped with melted American cheese, crispy lettuce, ripe tomato, and crunchy pickles."),
    AllProductsModel(
      productImage: AppAssets.product2,
      productName: "Hamburger",
      productDescription: "Veggie Burger",
      rate: 4.8,
      id: 1,
      productLongDescription:
          'Enjoy our delicious Hamburger Veggie Burger, made with a savory blend of fresh vegetables and herbs, topped with crisp lettuce, juicy tomatoes, and tangy pickles, all served on a soft, toasted bun. ',
    ),
    AllProductsModel(
      productImage: AppAssets.product3,
      productName: "Hamburger",
      productDescription: "Chicken Burger",
      rate: 4.6,
      id: 2,
      productLongDescription:
          'Our chicken burger is a delicious and healthier alternative to traditional beef burgers, perfect for those looking for a lighter meal option. Try it today and experience the mouth-watering flavors of our Hamburger Chicken Burger!',
    ),
    AllProductsModel(
      productImage: AppAssets.product4,
      productName: "Hamburger",
      productDescription: "Fried Chicken Burger",
      rate: 4.5,
      id: 3,
      productLongDescription:
          'Indulge in our crispy and savory Fried Chicken Burger, made with a juicy chicken patty, hand-breaded and deep-fried to perfection, served on a warm bun with lettuce, tomato, and a creamy sauce.',
    ),
  ];
}
