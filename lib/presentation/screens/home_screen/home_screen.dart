import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodgo_app/data/models/local/all_products_model.dart';
import 'package:foodgo_app/data/models/local/product_categories.dart';
import 'package:foodgo_app/presentation/screens/home_screen/widgets/category_buttons.dart';
import 'package:foodgo_app/presentation/screens/home_screen/widgets/custom_product_card.dart';
import 'package:foodgo_app/presentation/screens/home_screen/widgets/searcbar_and_filter_button.dart';
import 'package:foodgo_app/utils/constants/app_assets.dart';
import 'package:foodgo_app/utils/constants/app_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const List<AllProductsModel> products = AllProductsModel.getProducts;
    final List<ProductCategories> productCategory =
        ProductCategories.categoryNames;

    return Scaffold(
        appBar: AppBar(
          title: SvgPicture.asset(AppAssets.foodgoLogoBlack),
        ),
        body: ListView(
          children: [
            const SizedBox(height: 20),
            const SearcbarAndFilterButton(),
            const SizedBox(height: 40),
            SizedBox(
              height: 50,
              child: CategoryButtons(productCategory: productCategory),
            ),
            const SizedBox(height: 40),
            SizedBox(
              height: 530,
              width: MediaQuery.of(context).size.width,
              child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.all(8),
                itemCount: 4,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 180 / 240,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                ),
                itemBuilder: (context, index) {
                  final product = products[index];
                  return CustomProductCard(
                    productImage: product.productImage,
                    productName: product.productName,
                    productDescription: product.productDescription,
                    productRate: product.rate,
                  );
                },
              ),
            )
          ],
        ),
        bottomNavigationBar: CurvedNavigationBar(
          buttonBackgroundColor: AppColors.white,
          backgroundColor: AppColors.mainRed,
          items: const [
            Icon(Icons.home),
            Icon(Icons.person),
            Icon(Icons.add),
            Icon(Icons.message),
            Icon(Icons.favorite),
          ],
        ));
  }
}
