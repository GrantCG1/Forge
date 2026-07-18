import 'package:flutter/material.dart';

import '../../../domain/models/activity.dart';
import '../../../domain/models/meal.dart';
import 'activity_card.dart';
import 'plan_card.dart';
import 'section_heading.dart';

/// The "Today's Plan" section, presenting the day's meals and activity.
///
/// Receives already-prepared [Meal] and [Activity] domain objects — it
/// does not construct, fetch or transform them. Choosing an icon per meal
/// category is the only presentation-specific mapping performed here,
/// kept in one place so it isn't duplicated across each card.
class TodayPlanSection extends StatelessWidget {
  const TodayPlanSection({
    super.key,
    required this.breakfast,
    required this.lunch,
    required this.dinner,
    required this.activity,
  });

  final Meal breakfast;
  final Meal lunch;
  final Meal dinner;
  final Activity activity;

  static IconData _iconForMealCategory(MealCategory category) {
    switch (category) {
      case MealCategory.breakfast:
        return Icons.free_breakfast_outlined;
      case MealCategory.lunch:
        return Icons.lunch_dining_outlined;
      case MealCategory.dinner:
        return Icons.dinner_dining_outlined;
      case MealCategory.snack:
        return Icons.cookie_outlined;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SectionHeading(title: "Today's Plan"),
        const SizedBox(height: 12),
        PlanCard(
          meal: breakfast,
          icon: _iconForMealCategory(breakfast.category),
        ),
        const SizedBox(height: 12),
        PlanCard(meal: lunch, icon: _iconForMealCategory(lunch.category)),
        const SizedBox(height: 12),
        PlanCard(meal: dinner, icon: _iconForMealCategory(dinner.category)),
        const SizedBox(height: 12),
        ActivityCard(activity: activity, icon: Icons.directions_walk_outlined),
      ],
    );
  }
}
