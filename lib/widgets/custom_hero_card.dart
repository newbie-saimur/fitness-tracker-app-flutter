import 'package:fitness_tracker_app/utils/colors.dart';
import 'package:fitness_tracker_app/utils/text_style.dart';
import 'package:fitness_tracker_app/views/FitnessTracker/fitness_tracker.dart';
import 'package:fitness_tracker_app/widgets/custom_icon_text.dart';
import 'package:flutter/material.dart';

class CustomHeroCard extends StatelessWidget {
  const CustomHeroCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(24, 16, 0, 12),
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              headingThree(
                data: "Full Body\nExercise X3",
                textColor: Colors.black,
              ),
              SizedBox(height: 10),
              CustomIconText(
                icon: Icons.local_fire_department_outlined,
                text: "1230 kCal",
              ),
              SizedBox(height: 4),
              CustomIconText(icon: Icons.access_time_rounded, text: "50 min"),
              SizedBox(height: 16),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black.withValues(alpha: 0.05),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const FitnessTracker(),
                    ),
                  );
                },
                child: Text("Start Now", style: TextStyle(color: Colors.black)),
              ),
            ],
          ),
          Positioned(
            top: 0,
            bottom: 0,
            right: 10,
            child: Container(
              width: 180,
              height: 180,
              decoration: BoxDecoration(
                color: Colors.black.withValues(alpha: 0.1),
                shape: BoxShape.circle,
              ),
            ),
          ),
          Positioned(
            top: -62,
            right: -10,
            child: Image.asset("assets/images/man.png", height: 300),
          ),
        ],
      ),
    );
  }
}
