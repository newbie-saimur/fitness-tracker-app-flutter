import 'package:flutter/material.dart';

class CustomCircleButton extends StatelessWidget {
  const CustomCircleButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(color: Colors.white10, shape: BoxShape.circle),
      child: Center(child: Icon(Icons.grid_view, size: 30)),
    );
  }
}
