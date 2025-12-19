import 'package:fitness_tracker_app/utils/colors.dart';
import 'package:fitness_tracker_app/utils/text_style.dart';
import 'package:fitness_tracker_app/widgets/custom_bar_chart.dart';
import 'package:flutter/material.dart';

class BloodPressureCard extends StatelessWidget {
  const BloodPressureCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      decoration: BoxDecoration(
        border: BoxBorder.all(width: 1.5, color: AppColors.primaryColor),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              bodyLarge(data: "Blood Pressure", textColor: Colors.white),
              Row(
                children: [
                  bodyLarge(data: "Weekly", textColor: Colors.white38),
                  Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: Colors.white38,
                    size: 28,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 20),
          CustomBarChart(),
        ],
      ),
    );
  }
}
