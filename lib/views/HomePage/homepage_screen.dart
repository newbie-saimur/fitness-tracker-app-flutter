import 'package:fitness_tracker_app/utils/colors.dart';
import 'package:fitness_tracker_app/utils/text_style.dart';
import 'package:fitness_tracker_app/widgets/custom_circle_button.dart';
import 'package:fitness_tracker_app/widgets/custom_details_card.dart';
import 'package:fitness_tracker_app/widgets/custom_hero_card.dart';
import 'package:flutter/material.dart';

class HomepageScreen extends StatelessWidget {
  const HomepageScreen({super.key});

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
                  CustomCircleButton(icon: Icons.grid_view_outlined),
                  CustomCircleButton(icon: Icons.notifications_none_outlined),
                ],
              ),
              SizedBox(height: 12),
              headingTwo(data: "Make Your"),
              headingTwo(
                data: "Body Perfect",
                textColor: AppColors.primaryColor,
              ),
              SizedBox(height: 20),
              CustomHeroCard(),
              SizedBox(height: 24),
              Row(
                children: [
                  Expanded(
                    child: CustomDetailsCard(
                      icon: Icons.directions_run_outlined,
                      title: "Running\nDistance",
                      value: "1.8 km",
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: CustomDetailsCard(
                      icon: Icons.directions_bike_rounded,
                      title: "Total\nCycling",
                      value: "7.3 km",
                      isDark: true,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.only(left: 24, top: 8, bottom: 8, right: 8),
                decoration: BoxDecoration(
                  color: AppColors.secondaryColor,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        headingThree(
                          data: "Appointment",
                          textColor: Colors.white,
                        ),
                        bodyLarge(
                          data: "For a exercise practice",
                          textColor: Color(0xFF777871),
                        ),
                      ],
                    ),
                    CustomCircleButton(
                      icon: Icons.call,
                      backgroundColor: AppColors.primaryColor,
                      color: Colors.black,
                      width: 70,
                      height: 70,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
