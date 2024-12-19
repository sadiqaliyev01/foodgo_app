import 'package:flutter/material.dart';
import 'package:foodgo_app/utils/constants/app_colors.dart';

class CustomOrderAndPayButton extends StatelessWidget {
  final double width;
  final double height;
  final Color color;
  final String text;
  final VoidCallback onPressed;

  const CustomOrderAndPayButton({
    super.key,
    this.width = 200,
    this.height = 70,
    this.color = AppColors.mainRed,
    required this.text,
    required this.onPressed, 
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color, 
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24), 
          ),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: AppColors.white,
          ),
        ),
      ),
    );
  }
}
