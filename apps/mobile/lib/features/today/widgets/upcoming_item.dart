import 'package:flutter/material.dart';

/// A single row within the Upcoming section.
///
/// Extracted because the same icon-plus-label layout is reused for each
/// placeholder item (Grocery shopping, Tennis, Meal prep).
class UpcomingItem extends StatelessWidget {
  const UpcomingItem({super.key, required this.icon, required this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Icon(icon, color: theme.colorScheme.primary),
          const SizedBox(width: 16),
          Expanded(child: Text(label, style: theme.textTheme.bodyLarge)),
        ],
      ),
    );
  }
}
