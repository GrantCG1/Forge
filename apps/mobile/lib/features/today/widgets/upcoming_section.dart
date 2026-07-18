import 'package:flutter/material.dart';

import 'section_heading.dart';
import 'upcoming_item.dart';

/// The "Upcoming" section, listing a few placeholder items.
class UpcomingSection extends StatelessWidget {
  const UpcomingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionHeading(title: 'Upcoming'),
        SizedBox(height: 12),
        Card(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            child: Column(
              children: [
                UpcomingItem(
                  icon: Icons.shopping_cart_outlined,
                  label: 'Grocery shopping',
                ),
                Divider(height: 1),
                UpcomingItem(
                  icon: Icons.sports_tennis_outlined,
                  label: 'Tennis',
                ),
                Divider(height: 1),
                UpcomingItem(
                  icon: Icons.set_meal_outlined,
                  label: 'Meal prep',
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
