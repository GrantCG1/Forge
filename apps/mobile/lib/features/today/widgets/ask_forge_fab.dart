import 'package:flutter/material.dart';

/// The prominent "Ask Forge" floating action button.
///
/// Extracted to keep the screen's build method flat and to make its
/// visual-only, no-op behaviour explicit and easy to find in one place.
class AskForgeFab extends StatelessWidget {
  const AskForgeFab({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      // Intentionally a no-op — this is visual only until the conversation
      // experience is implemented.
      onPressed: () {},
      icon: const Icon(Icons.chat_bubble_outline),
      label: const Text('Ask Forge'),
    );
  }
}
