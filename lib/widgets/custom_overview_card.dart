import 'package:fitness_tracker_app/utils/colors.dart';
import 'package:fitness_tracker_app/utils/text_style.dart';
import 'package:fitness_tracker_app/widgets/custom_circle_button.dart';
import 'package:fitness_tracker_app/widgets/custom_time_tracker.dart';
import 'package:flutter/material.dart';

class CustomOverviewCard extends StatelessWidget {
  const CustomOverviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(8, 8, 8, 16),
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        children: [
          Row(
            children: [
              CustomCircleButton(
                icon: Icons.monitor_heart_rounded,
                color: Colors.black,
                backgroundColor: Colors.black12,
              ),
              SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  headingThree(data: "851 ms", textColor: Colors.black),
                  bodyLarge(
                    data: "R-R interval",
                    fontWeight: FontWeight.normal,
                    textColor: Colors.black54,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 32),
          Row(
            spacing: 6,
            children: [
              Expanded(
                child: CustomTimeTracker(time: "850 ms", isFilled: true),
              ),
              Expanded(child: CustomTimeTracker(time: "830 ms")),
              Expanded(child: CustomTimeTracker(time: "810 ms")),
            ],
          ),
        ],
      ),
    );
  }
}
