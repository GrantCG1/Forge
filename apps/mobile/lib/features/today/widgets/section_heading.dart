import 'package:flutter/material.dart';

/// A consistent heading used to introduce each section of the Today screen.
///
/// Extracted because the same title style is repeated across Today's Plan,
/// This Week and Upcoming — keeping it in one place avoids visual drift
/// between sections.
class SectionHeading extends StatelessWidget {
  const SectionHeading({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(title, style: Theme.of(context).textTheme.titleLarge);
  }
}
