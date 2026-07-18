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

  testWidgets('Today screen displays the daily plan, week and upcoming '
      'sections', (WidgetTester tester) async {
    // The Today screen's content is taller than the default test surface,
    // and a scrollable ListView only builds children within its viewport.
    // Use a tall virtual viewport so every section is built and visible
    // without needing to simulate scrolling.
    await tester.binding.setSurfaceSize(const Size(400, 2400));
    addTearDown(() => tester.binding.setSurfaceSize(null));

    await tester.pumpWidget(const ForgeApp());

    expect(find.text("Today's Plan"), findsOneWidget);
    expect(find.text('Breakfast'), findsOneWidget);
    expect(find.text('Lunch'), findsOneWidget);
    expect(find.text('Dinner'), findsOneWidget);
    expect(find.text('Activity'), findsOneWidget);

    expect(find.text('This Week'), findsOneWidget);

    expect(find.text('Upcoming'), findsOneWidget);
    expect(find.text('Grocery shopping'), findsOneWidget);
    expect(find.text('Tennis'), findsOneWidget);
    expect(find.text('Meal prep'), findsOneWidget);

    expect(find.text('Ask Forge'), findsOneWidget);
  });
}
