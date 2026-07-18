import 'package:flutter/material.dart';

import '../../../domain/models/recommendation.dart';
import 'section_heading.dart';
import 'upcoming_item.dart';

/// The "Upcoming" section, listing upcoming [Recommendation]s.
///
/// Receives an already-prepared list of recommendations — it does not
/// construct, fetch or transform them.
class UpcomingSection extends StatelessWidget {
  const UpcomingSection({super.key, required this.recommendations});

  final List<Recommendation> recommendations;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SectionHeading(title: 'Upcoming'),
        const SizedBox(height: 12),
        Card(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            child: Column(
              children: [
                for (var i = 0; i < recommendations.length; i++) ...[
                  if (i > 0) const Divider(height: 1),
                  UpcomingItem(recommendation: recommendations[i]),
                ],
              ],
            ),
          ),
        ),
      ],
    );
  }
}
