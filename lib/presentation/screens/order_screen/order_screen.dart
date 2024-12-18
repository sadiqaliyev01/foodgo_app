import 'package:flutter/material.dart';
import 'package:foodgo_app/data/models/local/orderCardText.dart';
import 'package:foodgo_app/presentation/screens/order_screen/widgets/orderCard.dart';
import 'package:foodgo_app/presentation/widgets/CustomAppBar.dart';
import 'package:foodgo_app/presentation/widgets/CustomNumberController.dart';
import 'package:foodgo_app/presentation/widgets/CustomSlider.dart';
import 'package:foodgo_app/utils/constants/app_assets.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  double value = 0.5;

  void onChanged(double newValue) {
    setState(() {
      value = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        onBackPressed: () => print("Pressed back button"),
        onSearchPressed: () => print("Pressed search button"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  AppAssets.orderScreenBurger,
                  height: 297,
                  width: 217,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 150),
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: const TextSpan(
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                          ),
                          children: [
                            TextSpan(
                              text: "Customize ",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text:
                                  "Your Burger to Your Tastes. Ultimate Experience",
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    CustomSlider(
                      value: value,
                      onChanged: onChanged,
                      min: 0.0,
                      max: 1.0,
                      labelFormatter: (value) {
                        return value < 0.5 ? 'Mild' : 'Spicy';
                      },
                    ),
                    const SizedBox(height: 30),
                    const CustomNumberControl(
                      min: 1,
                      max: 100,
                      initialValue: 5,
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 40),
          Column(
            children: [
              const Text("Toppings"),
              SizedBox(
                height: 120, // Yükseklik sınırı belirledik
                child: ListView.builder(
                  scrollDirection: Axis.horizontal, // Yatay kaydırma
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  itemCount: OrderCardText.toppings.length,
                  itemBuilder: (context, index) {
                    final item = OrderCardText.toppings[index];
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 4), // Kartlar arasında yatay boşluk
                      child: CustomCard(
                        imagePath: item.imagePath,
                        text: item.cardText,
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
          const SizedBox(height: 30,),
          Column(
            children: [
              const Text("Side options"),
              SizedBox(
                height: 120, // Yükseklik sınırı belirledik
                child: ListView.builder(
                  scrollDirection: Axis.horizontal, // Yatay kaydırma
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  itemCount: OrderCardText.sideOptions.length,
                  itemBuilder: (context, index) {
                    final item = OrderCardText.sideOptions[index];
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 6), // Kartlar arasında yatay boşluk
                      child: CustomCard(
                        imagePath: item.imagePath,
                        text: item.cardText,
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
