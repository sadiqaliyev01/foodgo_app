import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodgo_app/data/models/local/product_categories.dart';
import 'package:foodgo_app/presentation/screens/home_screen/widgets/category_buttons.dart';
import 'package:foodgo_app/presentation/screens/home_screen/widgets/searcbar_and_filter_button.dart';
import 'package:foodgo_app/utils/constants/app_assets.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
          const SizedBox(
            height: 40,
          ),
          SizedBox(
            height: 50,
            child: CategoryButtons(productCategory: productCategory),
          )
        ],
      ),
    );
  }
}
