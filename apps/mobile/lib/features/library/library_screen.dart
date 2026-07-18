import 'package:flutter/material.dart';

/// The Library feature's entry screen.
///
/// Placeholder shell. Future work will present the Forge catalogue of
/// recipes, meals, exercises and learning content.
class LibraryScreen extends StatelessWidget {
  const LibraryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Library')),
      body: const Center(child: Text('Library')),
    );
  }
}
