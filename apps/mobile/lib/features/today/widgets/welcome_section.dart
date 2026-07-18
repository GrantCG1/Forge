import 'package:flutter/material.dart';

/// The Welcome section at the top of the Today screen.
///
/// Shows a time-of-day greeting and a short, calm motivational subtitle.
/// This is presentation-only formatting — it does not represent a
/// decision or recommendation from the Decision Engine.
class WelcomeSection extends StatelessWidget {
  const WelcomeSection({super.key});

  static String _greetingForHour(int hour) {
    if (hour < 12) return 'Good morning';
    if (hour < 17) return 'Good afternoon';
    return 'Good evening';
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final greeting = _greetingForHour(DateTime.now().hour);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(greeting, style: theme.textTheme.headlineMedium),
        const SizedBox(height: 8),
        Text(
          'One small step today is still a step forward.',
          style: theme.textTheme.bodyLarge?.copyWith(
            color: theme.colorScheme.onSurfaceVariant,
          ),
        ),
      ],
    );
  }
}
