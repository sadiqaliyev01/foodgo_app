import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../utils/constants/app_assets.dart';
import '../../../../utils/constants/app_colors.dart';

class SearcbarAndFilterButton extends StatelessWidget {
  const SearcbarAndFilterButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 16),
            child: SizedBox(
              height: 60,
              child: SearchBar(
                hintText: "Search",
                backgroundColor: WidgetStateProperty.all(AppColors.white),
                elevation: WidgetStateProperty.all(6),
                leading: const Icon(Icons.search),
                padding: WidgetStateProperty.all(
                  const EdgeInsets.symmetric(horizontal: 16),
                ),
                shape: WidgetStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SizedBox(
            height: 60,
            width: 60,
            child: DecoratedBox(
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(20),
                color: AppColors.mainRed,
              ),
              child: Center(
                child: SvgPicture.asset(
                  AppAssets.settingsIcon,
                  height: 24,
                  width: 24,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
