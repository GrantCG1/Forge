import 'package:flutter_test/flutter_test.dart';
import 'package:mobile/domain/models/activity.dart';

void main() {
  const walk = Activity(
    id: '1',
    name: 'Morning Walk',
    description: 'A gentle walk to start the day.',
    duration: Duration(minutes: 20),
    intensity: ActivityIntensity.low,
  );

  group('Activity', () {
    test('assigns constructor arguments to fields', () {
      expect(walk.id, '1');
      expect(walk.name, 'Morning Walk');
      expect(walk.description, 'A gentle walk to start the day.');
      expect(walk.duration, const Duration(minutes: 20));
      expect(walk.intensity, ActivityIntensity.low);
    });

    test('is const-constructible and canonicalised', () {
      const other = Activity(
        id: '1',
        name: 'Morning Walk',
        description: 'A gentle walk to start the day.',
        duration: Duration(minutes: 20),
        intensity: ActivityIntensity.low,
      );

      expect(identical(walk, other), isTrue);
    });

    test('implements value equality', () {
      final other = Activity(
        id: '1',
        name: 'Morning Walk',
        description: 'A gentle walk to start the day.',
        duration: const Duration(minutes: 20),
        intensity: ActivityIntensity.low,
      );

      expect(walk, equals(other));
      expect(walk.hashCode, equals(other.hashCode));
    });

    test('is not equal when intensity differs', () {
      final other = Activity(
        id: '1',
        name: 'Morning Walk',
        description: 'A gentle walk to start the day.',
        duration: const Duration(minutes: 20),
        intensity: ActivityIntensity.high,
      );

      expect(walk, isNot(equals(other)));
    });

    test('exposes all ActivityIntensity values', () {
      expect(ActivityIntensity.values, [
        ActivityIntensity.low,
        ActivityIntensity.moderate,
        ActivityIntensity.high,
      ]);
    });

    test('toString includes key fields', () {
      expect(walk.toString(), contains('Morning Walk'));
      expect(walk.toString(), contains('ActivityIntensity.low'));
    });
  });
}
