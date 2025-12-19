import 'package:fitness_tracker_app/utils/colors.dart';
import 'package:fitness_tracker_app/utils/text_style.dart';
import 'package:fitness_tracker_app/widgets/custom_blood_pressure_card.dart';
import 'package:fitness_tracker_app/widgets/custom_circle_button.dart';
import 'package:fitness_tracker_app/widgets/custom_overview_card.dart';
import 'package:fitness_tracker_app/widgets/custom_overview_tile.dart';
import 'package:flutter/material.dart';

class FitnessTracker extends StatelessWidget {
  const FitnessTracker({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomCircleButton(
                    icon: Icons.arrow_back_ios_new,
                    onTap: () => Navigator.pop(context),
                  ),
                  CustomCircleButton(icon: Icons.notifications_none_outlined),
                ],
              ),
              SizedBox(height: 16),
              Padding(
                padding: EdgeInsetsGeometry.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    headingTwo(data: "Health"),
                    headingTwo(
                      data: "Overview",
                      textColor: AppColors.primaryColor,
                    ),
                    SizedBox(height: 16),
                    Row(
                      spacing: 40,
                      children: [
                        Expanded(
                          child: CustomOverviewTile(
                            title: "Calories",
                            value: "1360 kCal",
                          ),
                        ),
                        Expanded(
                          child: CustomOverviewTile(
                            title: "Protein",
                            value: "30 Gram",
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                    Row(
                      spacing: 40,
                      children: [
                        Expanded(
                          child: CustomOverviewTile(
                            title: "Sleep",
                            value: "3 Hours",
                          ),
                        ),
                        Expanded(
                          child: CustomOverviewTile(
                            title: "Weight",
                            value: "67 KG",
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              CustomOverviewCard(),
              SizedBox(height: 12),
              CustomBloodPressureCard(),
            ],
          ),
        ),
      ),
    );
  }
}
