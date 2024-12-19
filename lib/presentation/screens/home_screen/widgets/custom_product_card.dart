import 'package:flutter/material.dart';
import 'package:foodgo_app/presentation/widgets/app_titles.dart';
import 'package:foodgo_app/utils/constants/app_assets.dart';
import 'package:foodgo_app/utils/constants/app_colors.dart';

class CustomProductCard extends StatefulWidget {
  const CustomProductCard({
    super.key,
    required this.productImage,
    required this.productName,
    required this.productDescription,
    required this.productRate,
    this.onPressed,
  });

  final String productImage;
  final String productName;
  final String productDescription;
  final double productRate;
  final void Function()? onPressed;

  @override
  State<CustomProductCard> createState() => _CustomProductCardState();
}

class _CustomProductCardState extends State<CustomProductCard> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.white,
      elevation: 6,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Spacer(),
          Center(
            child: Image.asset(widget.productImage),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, bottom: 4),
            child: AppTitles(text: widget.productName),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, bottom: 4),
            child: Text(
              widget.productDescription,
              style: const TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(left: 4.0),
            child: Row(
              children: [
                const Icon(
                  Icons.star,
                  color: AppColors.yellow,
                ),
                const SizedBox(width: 8),
                Text(
                  '${widget.productRate}',
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {
                    isPressed = !isPressed;
                    setState(() {});
                  },
                  icon: isPressed
                      ? const Icon(
                          Icons.favorite,
                          color: Colors.red,
                        )
                      : Image.asset(
                          AppAssets.favIcon,
                        ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
