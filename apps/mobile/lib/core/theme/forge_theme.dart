import 'package:flutter/material.dart';

/// Forge's Material 3 application theme.
///
/// The seed colour anchors both the light and dark colour schemes so the
/// brand stays visually consistent across brightness modes. This relies
/// solely on Flutter's built-in Material 3 theming support — no design
/// tokens, styling frameworks or external packages are used.
abstract final class ForgeTheme {
  /// Deep forest green — reflects Forge's calm, nature-aligned personality.
  static const Color _seedColor = Color(0xFF2E5339);

  static ThemeData get light => ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: _seedColor,
      brightness: Brightness.light,
    ),
  );

  static ThemeData get dark => ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: _seedColor,
      brightness: Brightness.dark,
    ),
  );
}
