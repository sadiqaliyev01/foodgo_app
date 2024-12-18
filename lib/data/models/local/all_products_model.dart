import 'package:foodgo_app/utils/constants/app_assets.dart';

class AllProductsModel {
  const AllProductsModel({
    required this.productImage,
    required this.productName,
    required this.productDescription,
    required this.rate,
  });

  final String productImage;
  final String productName;
  final String productDescription;
  final double rate;

  static const List<AllProductsModel> getProducts = [
    AllProductsModel(
      productImage: AppAssets.product1,
      productName: "CheeseBurger",
      productDescription: "Wendy's Burger",
      rate: 4.9,
    ),
    AllProductsModel(
      productImage: AppAssets.product2,
      productName: "Hamburger",
      productDescription: "Veggie Burger",
      rate: 4.8,
    ),
    AllProductsModel(
      productImage: AppAssets.product3,
      productName: "Hamburger",
      productDescription: "Chicken Burger",
      rate: 4.6,
    ),
    AllProductsModel(
      productImage: AppAssets.product4,
      productName: "Hamburger",
      productDescription: "Fried Chicken Burger",
      rate: 4.5,
    ),
  ];
}
