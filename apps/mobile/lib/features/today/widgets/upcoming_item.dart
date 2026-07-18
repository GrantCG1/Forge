import 'package:flutter/material.dart';

import '../../../domain/models/recommendation.dart';

/// A single row within the Upcoming section, presenting a [Recommendation].
///
/// Extracted because the same icon-plus-label layout is reused for every
/// recommendation. This widget only renders the [recommendation] it is
/// given — it does not construct, fetch or transform it.
class UpcomingItem extends StatelessWidget {
  const UpcomingItem({super.key, required this.recommendation});

  final Recommendation recommendation;

  static IconData _iconForRecommendationType(RecommendationType type) {
    switch (type) {
      case RecommendationType.meal:
        return Icons.shopping_cart_outlined;
      case RecommendationType.activity:
        return Icons.sports_tennis_outlined;
      case RecommendationType.learning:
        return Icons.menu_book_outlined;
      case RecommendationType.recovery:
        return Icons.self_improvement_outlined;
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Icon(
            _iconForRecommendationType(recommendation.recommendationType),
            color: theme.colorScheme.primary,
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Text(
              recommendation.title,
              style: theme.textTheme.bodyLarge,
            ),
          ),
        ],
      ),
    );
  }
}
