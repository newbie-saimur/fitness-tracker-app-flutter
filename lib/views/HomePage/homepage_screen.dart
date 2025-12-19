import 'package:fitness_tracker_app/widgets/custom_circle_button.dart';
import 'package:flutter/material.dart';

class HomepageScreen extends StatelessWidget {
  const HomepageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [CustomCircleButton(), CustomCircleButton()],
          ),
        ],
      ),
    );
  }
}
