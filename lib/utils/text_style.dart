import 'package:flutter/material.dart';

Widget headingTwo({
  required String data,
  Color? textColor,
  FontWeight? fontWeight,
}) {
  return Text(
    data,
    style: TextStyle(
      fontSize: 32,
      fontWeight: fontWeight ?? FontWeight.w700,
      color: textColor ?? Colors.white,
    ),
  );
}

Widget headingThree({
  required String data,
  Color? textColor,
  FontWeight? fontWeight,
}) {
  return Text(
    data,
    style: TextStyle(
      fontSize: 24,
      fontWeight: fontWeight ?? FontWeight.w700,
      color: textColor ?? Colors.white,
    ),
  );
}

Widget bodyLarge({
  required String data,
  Color? textColor,
  FontWeight? fontWeight,
  double? fontSize,
}) {
  return Text(
    data,
    style: TextStyle(
      fontSize: fontSize ?? 18,
      fontWeight: fontWeight ?? FontWeight.w500,
      color: textColor ?? Colors.black,
    ),
  );
}

Widget bodyNormal({
  required String data,
  Color? textColor,
  FontWeight? fontWeight,
}) {
  return Text(
    data,
    style: TextStyle(
      fontSize: 16,
      fontWeight: fontWeight ?? FontWeight.normal,
      color: textColor ?? Color(0xFF777871),
    ),
  );
}
