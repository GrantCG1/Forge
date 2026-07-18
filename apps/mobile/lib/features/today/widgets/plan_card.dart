import 'package:flutter/material.dart';

/// A single card within Today's Plan.
///
/// Extracted because the same visual structure (icon, title, description,
/// and an affordance suggesting it opens later) is reused four times —
/// for Breakfast, Lunch, Dinner and Activity. The trailing chevron is
/// visual only; no navigation is wired up yet.
class PlanCard extends StatelessWidget {
  const PlanCard({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
  });

  final IconData icon;
  final String title;
  final String description;

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
        title: Text(title, style: theme.textTheme.titleMedium),
        subtitle: Text(description),
        trailing: Icon(Icons.chevron_right, color: theme.colorScheme.outline),
      ),
    );
  }
}
