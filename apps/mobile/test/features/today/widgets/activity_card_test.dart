import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mobile/domain/models/activity.dart';
import 'package:mobile/features/today/widgets/activity_card.dart';

void main() {
  const activity = Activity(
    id: 'activity-test',
    name: 'Gym Session',
    description: 'A little movement, on your terms.',
    duration: Duration(minutes: 45),
    intensity: ActivityIntensity.moderate,
  );

  testWidgets('ActivityCard renders the activity name, description and '
      'given icon', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: ActivityCard(
            activity: activity,
            icon: Icons.directions_walk_outlined,
          ),
        ),
      ),
    );

    expect(find.text('Gym Session'), findsOneWidget);
    expect(find.text('A little movement, on your terms.'), findsOneWidget);
    expect(find.byIcon(Icons.directions_walk_outlined), findsOneWidget);
    expect(find.byIcon(Icons.chevron_right), findsOneWidget);
  });
}
