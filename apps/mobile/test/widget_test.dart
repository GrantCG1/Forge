// Smoke tests verifying the Forge application shell: it launches into the
// Today screen by default, and bottom navigation switches between tabs.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:mobile/app/app.dart';

void main() {
  testWidgets('App launches into TodayScreen showing the Forge brand title', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const ForgeApp());

    expect(find.text('Forge'), findsOneWidget);

    final navigationBar = tester.widget<NavigationBar>(
      find.byType(NavigationBar),
    );
    expect(navigationBar.selectedIndex, 0);
  });

  testWidgets('Tapping a destination switches the active tab', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const ForgeApp());

    await tester.tap(find.widgetWithText(NavigationDestination, 'Library'));
    await tester.pumpAndSettle();

    final navigationBar = tester.widget<NavigationBar>(
      find.byType(NavigationBar),
    );
    expect(navigationBar.selectedIndex, 1);
  });
}
