import 'package:flutter/material.dart';

Widget headingTwo({
  required String data,
  Color? textColor,
  FontWeight? fontWeight,
}) {
  return Text(
    data,
    style: TextStyle(
      fontSize: 30,
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
}) {
  return Text(
    data,
    style: TextStyle(
      fontSize: 18,
      fontWeight: fontWeight ?? FontWeight.w500,
      color: textColor ?? Colors.black,
    ),
  );
}
