import 'package:fitness_tracker_app/utils/colors.dart';
import 'package:fitness_tracker_app/views/HomePage/homepage_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: AppColors.backgroundColor),
      home: HomepageScreen(),
    );
  }
}
