import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodgo_app/presentation/screens/home_screen/home_screen.dart';
import 'package:foodgo_app/utils/constants/app_assets.dart';
import 'package:foodgo_app/utils/constants/app_colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateNext();
  }

  void _navigateNext() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        ),
        (route) => route.isFirst,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainRed,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FadeInLeftBig(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 260),
              child: Center(child: SvgPicture.asset(AppAssets.foodgoLogo)),
            ),
          ),
          Row(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Stack(
                  alignment: Alignment.centerLeft,
                  children: [
                    Image.asset(AppAssets.splashBurger1),
                    Positioned(
                      left: 130,
                      top: 80,
                      child: Image.asset(AppAssets.splashBurger2),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
