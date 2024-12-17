class ProductCategories{
  ProductCategories({required this.categoryName, this.isSelected = false});

  final String categoryName;
  bool isSelected;

  static List<ProductCategories> categoryNames = [
    ProductCategories(categoryName: "All", isSelected: true),
    ProductCategories(categoryName: "Combos"),
    ProductCategories(categoryName: "Sliders"),
    ProductCategories(categoryName: "Classic"),
  ];
}