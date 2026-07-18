import 'package:flutter/material.dart';

import '../../../domain/models/activity.dart';

/// A dedicated card presenting a single [Activity].
///
/// Deliberately kept separate from [PlanCard] (not reused) so Activity's
/// presentation can evolve independently of Meal's — for example to show
/// intensity or duration later — without affecting the meal cards. This
/// widget only renders the [activity] it is given — it does not
/// construct, fetch or transform it.
class ActivityCard extends StatelessWidget {
  const ActivityCard({super.key, required this.activity, required this.icon});

  final Activity activity;
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
        title: Text(activity.name, style: theme.textTheme.titleMedium),
        subtitle: Text(activity.description),
        trailing: Icon(Icons.chevron_right, color: theme.colorScheme.outline),
      ),
    );
  }
}
