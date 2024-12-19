import 'package:flutter/material.dart';
import 'package:foodgo_app/data/models/local/all_products_model.dart';
import 'package:foodgo_app/presentation/screens/order_screen/order_screen.dart';
import 'package:foodgo_app/presentation/widgets/CustomSlider.dart';
import 'package:foodgo_app/presentation/widgets/custom_order_pay_button.dart';
import 'package:foodgo_app/presentation/widgets/totalSumText.dart';

import '../../widgets/CustomNumberController.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({super.key, required this.product});

  final AllProductsModel product;

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  double value = 0.5;

  void onChanged(double newValue) {
    setState(() {
      value = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.product.productName,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                widget.product.productImage,
                height: 300,
                width: 300,
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Text(
                  widget.product.productName,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 26,
                  ),
                ),
                const SizedBox(width: 4),
                Text(
                  widget.product.productDescription,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 26,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                const Icon(Icons.star, color: Colors.yellow),
                const SizedBox(width: 8),
                Text(
                  widget.product.rate.toString(),
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Text(
              widget.product.productLongDescription,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 150,
                  child: CustomSlider(
                    value: value,
                    onChanged: onChanged,
                  ),
                ),
                const CustomNumberControl(
                  min: 1,
                  max: 100,
                  initialValue: 5,
                )
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const TotalAmountWidget(amount: 9.99),
                CustomOrderAndPayButton(
                    text: "Order Now",
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const OrderScreen(),
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
