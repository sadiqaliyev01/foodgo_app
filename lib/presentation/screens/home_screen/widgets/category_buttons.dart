import 'package:flutter/material.dart';

import '../../../../data/models/local/product_categories.dart';
import '../../../../utils/constants/app_colors.dart';

class CategoryButtons extends StatefulWidget {
  const CategoryButtons({super.key, required this.productCategory});

  final List<ProductCategories> productCategory;

  @override
  State<CategoryButtons> createState() => _CategoryButtonsState();
}

class _CategoryButtonsState extends State<CategoryButtons> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => const SizedBox(width: 10),
      scrollDirection: Axis.horizontal,
      itemCount: widget.productCategory.length,
      padding: const EdgeInsets.symmetric(horizontal: 24),
      itemBuilder: (BuildContext context, int index) {
        final category = widget.productCategory[index];
        return ElevatedButton(
          onPressed: () {
            setState(() {
              for (var item in widget.productCategory) {
                item.isSelected = false;
              }
              category.isSelected = true;
            });
          },
          style: ElevatedButton.styleFrom(
            backgroundColor:
                category.isSelected ? AppColors.mainRed : AppColors.gray,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          child: Text(
            category.categoryName,
            style: TextStyle(
              color: category.isSelected ? AppColors.white : AppColors.black,
              fontSize: 16,
            ),
          ),
        );
      },
    );
  }
}
