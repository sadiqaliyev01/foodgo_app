import 'package:flutter/material.dart';
import 'package:foodgo_app/presentation/screens/order_screen/order_screen.dart';
import 'package:foodgo_app/presentation/screens/splash_screen/splash_screen.dart';
import 'package:foodgo_app/utils/constants/app_colors.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        scaffoldBackgroundColor: AppColors.white
      ),
      home: const SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
