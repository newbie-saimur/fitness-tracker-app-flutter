import 'package:fitness_tracker_app/utils/text_style.dart';
import 'package:flutter/material.dart';

class CustomTimeTracker extends StatelessWidget {
  final bool? isFilled;
  final String time;
  const CustomTimeTracker({super.key, this.isFilled, required this.time});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 12,
          decoration: BoxDecoration(
            color: isFilled == true ? Colors.black : Colors.black12,
            borderRadius: BorderRadius.circular(50),
          ),
        ),
        SizedBox(height: 16),
        bodyLarge(
          data: time,
          textColor: isFilled == true ? Colors.black : Colors.black45,
        ),
      ],
    );
  }
}
