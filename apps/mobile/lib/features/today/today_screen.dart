import 'package:flutter/material.dart';

/// The Today feature's entry screen.
///
/// This is the default landing destination and displays the Forge brand
/// title. It is currently a placeholder shell — future work will present
/// the user's plan for today once the Decision Engine and supporting
/// application services exist.
class TodayScreen extends StatelessWidget {
  const TodayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Forge')),
      body: const Center(child: Text('Today')),
    );
  }
}
