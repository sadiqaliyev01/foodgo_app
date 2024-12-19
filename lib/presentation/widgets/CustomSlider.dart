import 'package:flutter/material.dart';

class CustomSlider extends StatelessWidget {
  final double value;
  final ValueChanged<double> onChanged;
  final double min;
  final double max;
  final String Function(double)? labelFormatter;

  const CustomSlider({
    super.key,
    required this.value,
    required this.onChanged,
    this.min = 0.0,
    this.max = 1.0,
    this.labelFormatter,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "Spicy",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Slider(
          value: value,
          onChanged: onChanged,
          min: min,
          max: max,
          label: labelFormatter != null ? labelFormatter!(value) : null,
          activeColor: Colors.red,
          inactiveColor: Colors.grey,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Mild',
              style:
                  TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
            ),
            SizedBox(width: 100),
            Text(
              'Hot',
              style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ],
    );
  }
}
