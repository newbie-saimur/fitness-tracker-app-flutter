import 'package:flutter/material.dart';

class CustomCircleButton extends StatelessWidget {
  final Color? backgroundColor;
  final Color? color;
  final IconData icon;
  final double? width;
  final double? height;
  final FontWeight? fontWeight;
  const CustomCircleButton({
    super.key,
    this.backgroundColor,
    this.color,
    required this.icon,
    this.width,
    this.height,
    this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? 80,
      height: height ?? 80,
      decoration: BoxDecoration(
        color: backgroundColor ?? Colors.white10,
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Icon(
          icon,
          size: 26,
          color: color ?? Colors.white,
          fontWeight: fontWeight ?? FontWeight.normal,
        ),
      ),
    );
  }
}
