class OrderCardText {
  OrderCardText({required this.cardText, required this.imagePath});

  final String cardText;
  final String imagePath;

  // Toppings listesi
  static List<OrderCardText> toppings = [
    OrderCardText(cardText: "Tomato", imagePath: "assets/orderCardImage/Tomato.png"),
    OrderCardText(cardText: "Onions", imagePath: "assets/orderCardImage/Onions.png"),
    OrderCardText(cardText: "Pickles", imagePath: "assets/orderCardImage/Pickles.png"),
    OrderCardText(cardText: "Bacons", imagePath: "assets/orderCardImage/Bacons.png"),
  ];

  // Side Options listesi
  static List<OrderCardText> sideOptions = [
    OrderCardText(cardText: "Fries", imagePath: "assets/orderCardImage/Fries.png"),
    OrderCardText(cardText: "Coleslaw", imagePath: "assets/orderCardImage/Coleslaw.png"),
    OrderCardText(cardText: "Salad", imagePath: "assets/orderCardImage/Salad.png"),
    OrderCardText(cardText: "Onion", imagePath: "assets/orderCardImage/Onion.png"),
  ];
}
