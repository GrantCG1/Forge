import 'package:flutter/material.dart';

/// The Progress feature's entry screen.
///
/// Placeholder shell. Future work will present the user's progress
/// history across workouts, meals and goals.
class ProgressScreen extends StatelessWidget {
  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Progress')),
      body: const Center(child: Text('Progress')),
    );
  }
}
