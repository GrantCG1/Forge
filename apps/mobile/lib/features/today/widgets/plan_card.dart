import 'package:flutter/material.dart';

import '../../../domain/models/meal.dart';

/// A single card within Today's Plan, presenting a [Meal].
///
/// Extracted because the same visual structure (icon, title, description,
/// and an affordance suggesting it opens later) is reused for Breakfast,
/// Lunch and Dinner. The trailing chevron is visual only; no navigation
/// is wired up yet. This widget only renders the [meal] it is given — it
/// does not construct, fetch or transform it.
class PlanCard extends StatelessWidget {
  const PlanCard({super.key, required this.meal, required this.icon});

  final Meal meal;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Card(
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 8,
        ),
        leading: CircleAvatar(
          backgroundColor: theme.colorScheme.secondaryContainer,
          foregroundColor: theme.colorScheme.onSecondaryContainer,
          child: Icon(icon),
        ),
        title: Text(meal.name, style: theme.textTheme.titleMedium),
        subtitle: Text(meal.description),
        trailing: Icon(Icons.chevron_right, color: theme.colorScheme.outline),
      ),
    );
  }
}
