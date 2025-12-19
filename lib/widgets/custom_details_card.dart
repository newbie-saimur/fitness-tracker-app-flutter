import 'package:fitness_tracker_app/utils/colors.dart';
import 'package:fitness_tracker_app/utils/text_style.dart';
import 'package:fitness_tracker_app/widgets/custom_circle_button.dart';
import 'package:flutter/material.dart';

class CustomDetailsCard extends StatelessWidget {
  final String title;
  final String value;
  final bool? isDark;
  final IconData icon;
  const CustomDetailsCard({
    super.key,
    required this.title,
    required this.value,
    this.isDark,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 16, right: 8, bottom: 30, top: 8),
      decoration: BoxDecoration(
        color: isDark == true
            ? AppColors.secondaryColor
            : AppColors.primaryColor,
        borderRadius: BorderRadius.circular(40),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.topRight,
            child: CustomCircleButton(
              icon: icon,
              backgroundColor: isDark == true
                  ? Colors.white12
                  : Colors.black.withValues(alpha: .1),
              color: isDark == true ? Colors.white : Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8),
          bodyLarge(
            data: title,
            textColor: isDark == true ? Color(0xFF777871) : Colors.black,
          ),
          SizedBox(height: 8),
          headingTwo(
            data: value,
            textColor: isDark == true ? Colors.white : Colors.black,
          ),
        ],
      ),
    );
  }
}
