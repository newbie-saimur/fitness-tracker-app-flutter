import 'package:flutter/material.dart';

class CustomIconText extends StatelessWidget {
  final IconData icon;
  final String text;
  const CustomIconText({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: Colors.black54),
        SizedBox(width: 6),
        Text(text, style: TextStyle(color: Colors.black54)),
      ],
    );
  }
}
