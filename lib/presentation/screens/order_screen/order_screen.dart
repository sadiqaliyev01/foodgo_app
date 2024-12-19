import 'package:flutter/material.dart';
import 'package:foodgo_app/data/models/local/order_card_text.dart';
import 'package:foodgo_app/presentation/screens/order_screen/widgets/orderCard.dart';
import 'package:foodgo_app/presentation/screens/payment_screen/payment_screen.dart';
import 'package:foodgo_app/presentation/widgets/CustomNumberController.dart';
import 'package:foodgo_app/presentation/widgets/CustomSlider.dart';
import 'package:foodgo_app/presentation/widgets/custom_order_pay_button.dart';
import 'package:foodgo_app/presentation/widgets/totalSumText.dart';
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
      appBar: AppBar(actions: [IconButton(onPressed: (){}, icon: const Icon(Icons.search))],),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    AppAssets.orderScreenBurger,
                    height: 257,
                    width: 177,
                  ),
                  const SizedBox(
                    width: 20,
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
                      const SizedBox(height: 20),
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
            const SizedBox(height: 30),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Text(
                    "Toppings",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 120,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    itemCount: OrderCardText.toppings.length,
                    itemBuilder: (context, index) {
                      final item = OrderCardText.toppings[index];
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4),
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
            const SizedBox(height: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Text(
                    "Side options",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 100,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    itemCount: OrderCardText.sideOptions.length,
                    itemBuilder: (context, index) {
                      final item = OrderCardText.sideOptions[index];
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 6),
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
            const SizedBox(height: 15),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 16.0),
                  child: TotalAmountWidget(amount: 16.49),
                ),
                const SizedBox(
                  width: 60,
                ),
                CustomOrderAndPayButton(
                    text: "Order now",
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PaymentScreen(),
                        ),
                      );
                    })
              ],
            )
          ],
        ),
      ),
    );
  }
}
