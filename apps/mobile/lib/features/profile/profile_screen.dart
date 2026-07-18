import 'package:flutter/material.dart';

/// The Profile feature's entry screen.
///
/// Placeholder shell. Future work will present the user's lifestyle,
/// goals, preferences and account settings.
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profile')),
      body: const Center(child: Text('Profile')),
    );
  }
}
