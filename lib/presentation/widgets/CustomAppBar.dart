import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final VoidCallback? onBackPressed;
  final VoidCallback? onSearchPressed;

  const CustomAppBar({
    super.key,
    this.onBackPressed,
    this.onSearchPressed,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: const Icon(Icons.arrow_back, size: 28, color: Colors.black),
        onPressed: onBackPressed ?? () => Navigator.of(context).pop(),
      ),
      actions: [
        IconButton(
          icon: const Icon(
            Icons.search,
            size: 26,
            color: Colors.black,
          ),
          onPressed: onSearchPressed ?? () {},
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
