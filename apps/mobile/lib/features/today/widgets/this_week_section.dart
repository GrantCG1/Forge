import 'package:flutter/material.dart';

import 'day_chip.dart';
import 'section_heading.dart';

/// The "This Week" section, showing seven compact day chips with today
/// highlighted. Interaction is intentionally not implemented — this is a
/// visual indication only.
class ThisWeekSection extends StatelessWidget {
  const ThisWeekSection({super.key});

  static const List<String> _dayLabels = ['M', 'T', 'W', 'T', 'F', 'S', 'S'];

  @override
  Widget build(BuildContext context) {
    // DateTime.monday == 1, so subtracting 1 gives a 0-based Monday-first index.
    final todayIndex = DateTime.now().weekday - 1;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SectionHeading(title: 'This Week'),
        const SizedBox(height: 12),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
            _dayLabels.length,
            (index) => DayChip(
              label: _dayLabels[index],
              isToday: index == todayIndex,
            ),
          ),
        ),
      ],
    );
  }
}
