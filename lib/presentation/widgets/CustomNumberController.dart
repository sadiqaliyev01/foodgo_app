import 'package:flutter/material.dart';
import 'package:foodgo_app/utils/constants/app_colors.dart';

class CustomNumberControl extends StatefulWidget {
  final double min;
  final double max;
  final double initialValue;

  const CustomNumberControl({
    Key? key,
    this.min = 1.0,
    this.max = 100.0,
    this.initialValue = 0.0,
  }) : super(key: key);

  @override
  _CustomNumberControlState createState() => _CustomNumberControlState();
}

class _CustomNumberControlState extends State<CustomNumberControl> {
  late double value;

  @override
  void initState() {
    super.initState();
    value = widget.initialValue;
  }

  void increaseValue() {
    setState(() {
      if (value < widget.max) value += 1;
    });
  }

  void decreaseValue() {
    setState(() {
      if (value > widget.min) value -= 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Portion", 
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ),
        const SizedBox(height: 14,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: decreaseValue,
              child: const Icon(Icons.remove,color: Colors.white,),
              style: ElevatedButton.styleFrom(
                shadowColor: Colors.grey,
                backgroundColor: Colors.red, 
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: const EdgeInsets.all(12),
                minimumSize: const Size(50, 50),
              ),
            ),
            const SizedBox(width: 30),
            Text(
              value.toStringAsFixed(0), 
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(width: 30),
            ElevatedButton(
              onPressed: increaseValue,
              child: const Icon(Icons.add,color: Colors.white,),
              style: ElevatedButton.styleFrom(
                shadowColor: Colors.grey,
                backgroundColor: AppColors.mainRed, 
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8), 
                ),
                padding: const EdgeInsets.all(12),
                minimumSize: const Size(50, 50), 
              ),
            ),
          ],
        ),
      ],
    );
  }
}
