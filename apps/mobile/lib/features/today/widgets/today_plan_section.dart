import 'package:flutter/material.dart';

import 'plan_card.dart';
import 'section_heading.dart';

/// The "Today's Plan" section, presenting the four daily plan cards.
class TodayPlanSection extends StatelessWidget {
  const TodayPlanSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionHeading(title: "Today's Plan"),
        SizedBox(height: 12),
        PlanCard(
          icon: Icons.free_breakfast_outlined,
          title: 'Breakfast',
          description: 'A simple start to your morning.',
        ),
        SizedBox(height: 12),
        PlanCard(
          icon: Icons.lunch_dining_outlined,
          title: 'Lunch',
          description: 'A balanced meal to keep you going.',
        ),
        SizedBox(height: 12),
        PlanCard(
          icon: Icons.dinner_dining_outlined,
          title: 'Dinner',
          description: 'Something nourishing to end the day.',
        ),
        SizedBox(height: 12),
        PlanCard(
          icon: Icons.directions_walk_outlined,
          title: 'Activity',
          description: 'A little movement, on your terms.',
        ),
      ],
    );
  }
}
