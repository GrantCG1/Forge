import 'package:flutter/material.dart';

import '../core/theme/forge_theme.dart';
import 'root_screen.dart';

/// Root widget of the Forge application.
///
/// Responsible only for application-level setup: title, theme and the
/// root navigation shell. Routing and dependency wiring remain
/// intentionally absent until an architectural document requires them.
class ForgeApp extends StatelessWidget {
  const ForgeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Forge',
      theme: ForgeTheme.light,
      darkTheme: ForgeTheme.dark,
      home: const RootScreen(),
    );
  }
}
