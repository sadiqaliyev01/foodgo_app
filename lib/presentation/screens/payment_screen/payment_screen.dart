import 'package:flutter/material.dart';
import 'package:foodgo_app/presentation/screens/payment_screen/widgets/payment_methods.dart';
import 'package:foodgo_app/presentation/screens/payment_screen/widgets/payment_text.dart';
import 'package:foodgo_app/presentation/screens/payment_screen/widgets/success_dialog.dart';
import 'package:foodgo_app/presentation/widgets/CustomAppBar.dart';
import 'package:foodgo_app/presentation/widgets/custom_order_pay_button.dart';
import 'package:foodgo_app/presentation/widgets/totalSumText.dart';
import 'package:foodgo_app/utils/constants/app_colors.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  int _selectedValue = -1;

  void _showSuccessDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return SuccessDialog(
          message:
              'Your payment was successful.A receipt for this purchase has been sent to your email.',
          onGoBack: () {
            Navigator.of(context).pop();
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Order summary",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),
            const PaymentTexts(text1: "Order", text2: "16.48"),
            const SizedBox(height: 12),
            const PaymentTexts(text1: "Taxes", text2: "0.3"),
            const SizedBox(height: 12),
            const PaymentTexts(text1: "Delivery fees", text2: "1.5"),
            const SizedBox(height: 16),
            const Divider(),
            const SizedBox(height: 16),
            const PaymentTexts(
              text1: "Total",
              text2: "18.19",
              textStyle1: TextStyle(
                  color: AppColors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Estimated delivery time:",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "15-30 mins",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),
            const SizedBox(height: 60),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Payment methods",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                PaymentMethods(
                  imageUrl: "assets/png/MasterCard.png",
                  title: "Credit Card",
                  subtitle: "5105 **** **** 0505",
                  value: 1,
                  groupValue: _selectedValue,
                  onChanged: (value) {
                    setState(() {
                      _selectedValue = value!;
                    });
                  },
                ),
                const SizedBox(height: 16),
                PaymentMethods(
                  imageUrl: "assets/png/Visa.png",
                  title: "Debit Card",
                  subtitle: "3566 **** **** 0505",
                  value: 2,
                  groupValue: _selectedValue,
                  onChanged: (value) {
                    setState(() {
                      _selectedValue = value!;
                    });
                  },
                )
              ],
            ),
            const SizedBox(height: 20),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 16.0),
                  child: TotalAmountWidget(
                    label: "Total price",
                    labelStyle: TextStyle(color: AppColors.darkGray),
                    amount: 18.19,
                    amountStyle:
                        TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(width: 60),
                CustomOrderAndPayButton(
                  text: "Pay now",
                  onPressed: _showSuccessDialog,
                  // Burada dialog çağırılır
                  width: 160,
                  height: 75,
                  color: AppColors.brown,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
