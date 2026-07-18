import 'package:flutter/material.dart';

/// A single compact chip representing one day within This Week.
///
/// Extracted because the same shape is repeated seven times with only the
/// label and active/inactive styling changing between Today and the other
/// six days.
class DayChip extends StatelessWidget {
  const DayChip({super.key, required this.label, required this.isToday});

  final String label;
  final bool isToday;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final backgroundColor = isToday
        ? theme.colorScheme.primary
        : theme.colorScheme.surfaceContainerHighest;
    final foregroundColor = isToday
        ? theme.colorScheme.onPrimary
        : theme.colorScheme.onSurfaceVariant;

    return CircleAvatar(
      radius: 18,
      backgroundColor: backgroundColor,
      foregroundColor: foregroundColor,
      child: Text(
        label,
        style: theme.textTheme.labelLarge?.copyWith(color: foregroundColor),
      ),
    );
  }
}
