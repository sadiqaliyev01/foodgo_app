import 'package:flutter/material.dart';
import 'package:foodgo_app/utils/constants/app_colors.dart';

class TotalAmountWidget extends StatelessWidget {
  final String label;
  final double amount;
  final TextStyle? labelStyle;
  final TextStyle? amountStyle;
  final double iconSize;
  final double spacing;

  const TotalAmountWidget({
    super.key,
    this.label = "Total",
    required this.amount,
    this.labelStyle,
    this.amountStyle,
    this.iconSize = 28,
    this.spacing = 2,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: labelStyle ??
              const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
        ),
        SizedBox(height: spacing),
        Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.attach_money,
              size: iconSize,
              color: AppColors.mainRed,
            ),
            Text(
              amount.toStringAsFixed(2),
              style: amountStyle ??
                  const TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: AppColors.black,
                  ),
            ),
          ],
        ),
      ],
    );
  }
}
