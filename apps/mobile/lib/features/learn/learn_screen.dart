import 'package:flutter/material.dart';

/// The Learn feature's entry screen.
///
/// Placeholder shell. Future work will present lessons, tips and
/// educational content from the Learning domain.
class LearnScreen extends StatelessWidget {
  const LearnScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Learn')),
      body: const Center(child: Text('Learn')),
    );
  }
}
