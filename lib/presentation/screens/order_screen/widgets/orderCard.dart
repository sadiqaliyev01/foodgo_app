import 'package:flutter/material.dart';
import 'package:foodgo_app/utils/constants/app_colors.dart';

class CustomCard extends StatelessWidget {
  final String imagePath;
  final String text;

  const CustomCard({
    super.key,
    required this.imagePath,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12), 
            ),
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
              height: 40, 
            ),
          ),
          Container(
            height: 45,
            decoration: const BoxDecoration(
              color: AppColors.brown,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(12),
                bottomRight: Radius.circular(12),
              ),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Text(
                    text,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(20, 20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                    backgroundColor: AppColors.mainRed,
                    padding: const EdgeInsets.all(6),
                  ),
                  child: const Icon(
                    Icons.add, 
                    color: Colors.white, 
                    size: 12, 
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
