import 'package:fitness_tracker_app/utils/colors.dart';
import 'package:fitness_tracker_app/utils/text_style.dart';
import 'package:flutter/material.dart';

class HealthMetricTile extends StatelessWidget {
  final String title;
  final String value;
  const HealthMetricTile({super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(top: 5),
          width: 16,
          height: 16,
          decoration: BoxDecoration(
            color: AppColors.primaryColor,
            shape: BoxShape.circle,
          ),
        ),
        SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            bodyLarge(data: title, fontSize: 20, textColor: Colors.white),
            bodyNormal(data: value),
          ],
        ),
      ],
    );
  }
}
