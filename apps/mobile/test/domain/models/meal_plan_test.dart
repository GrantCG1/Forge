import 'package:flutter_test/flutter_test.dart';
import 'package:mobile/domain/models/meal.dart';
import 'package:mobile/domain/models/meal_plan.dart';

void main() {
  const breakfast = Meal(
    id: 'meal-1',
    name: 'Porridge',
    description: 'A warm, simple breakfast.',
    category: MealCategory.breakfast,
    estimatedPrepTime: Duration(minutes: 5),
    ingredients: ['Oats', 'Milk'],
  );
  const lunch = Meal(
    id: 'meal-2',
    name: 'Chicken Wrap',
    description: 'A balanced meal to keep you going.',
    category: MealCategory.lunch,
    estimatedPrepTime: Duration(minutes: 15),
    ingredients: ['Chicken', 'Wrap'],
  );

  group('MealPlan', () {
    final startDate = DateTime(2026, 7, 20);
    final endDate = DateTime(2026, 7, 26);

    final weekPlan = MealPlan(
      id: 'plan-1',
      name: 'Week Plan',
      meals: const [breakfast, lunch],
      startDate: startDate,
      endDate: endDate,
    );

    test('assigns constructor arguments to fields', () {
      expect(weekPlan.id, 'plan-1');
      expect(weekPlan.name, 'Week Plan');
      expect(weekPlan.meals, [breakfast, lunch]);
      expect(weekPlan.startDate, startDate);
      expect(weekPlan.endDate, endDate);
    });

    test('startDate and endDate are optional and default to null', () {
      const todaysPlan = MealPlan(
        id: 'plan-2',
        name: "Today's Plan",
        meals: [breakfast],
      );

      expect(todaysPlan.startDate, isNull);
      expect(todaysPlan.endDate, isNull);
    });

    test('is const-constructible when given const arguments', () {
      const a = MealPlan(
        id: 'plan-2',
        name: "Today's Plan",
        meals: [breakfast],
      );
      const b = MealPlan(
        id: 'plan-2',
        name: "Today's Plan",
        meals: [breakfast],
      );

      expect(identical(a, b), isTrue);
    });

    test('implements value equality, including the meals list', () {
      final other = MealPlan(
        id: 'plan-1',
        name: 'Week Plan',
        meals: const [breakfast, lunch],
        startDate: startDate,
        endDate: endDate,
      );

      expect(weekPlan, equals(other));
      expect(weekPlan.hashCode, equals(other.hashCode));
    });

    test('is not equal when meals differ', () {
      final different = MealPlan(
        id: 'plan-1',
        name: 'Week Plan',
        meals: const [breakfast],
        startDate: startDate,
        endDate: endDate,
      );

      expect(weekPlan, isNot(equals(different)));
    });

    test('is not equal when dates differ', () {
      final different = MealPlan(
        id: 'plan-1',
        name: 'Week Plan',
        meals: const [breakfast, lunch],
        startDate: startDate,
        endDate: DateTime(2026, 7, 27),
      );

      expect(weekPlan, isNot(equals(different)));
    });

    test('toString includes key fields', () {
      expect(weekPlan.toString(), contains('Week Plan'));
      expect(weekPlan.toString(), contains('plan-1'));
    });
  });
}
