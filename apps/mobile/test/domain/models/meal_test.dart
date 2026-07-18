import 'package:flutter_test/flutter_test.dart';
import 'package:mobile/domain/models/meal.dart';

void main() {
  const breakfast = Meal(
    id: '1',
    name: 'Porridge',
    description: 'A warm, simple breakfast.',
    category: MealCategory.breakfast,
    estimatedPrepTime: Duration(minutes: 5),
    ingredients: ['Oats', 'Milk'],
  );

  group('Meal', () {
    test('assigns constructor arguments to fields', () {
      expect(breakfast.id, '1');
      expect(breakfast.name, 'Porridge');
      expect(breakfast.description, 'A warm, simple breakfast.');
      expect(breakfast.category, MealCategory.breakfast);
      expect(breakfast.estimatedPrepTime, const Duration(minutes: 5));
      expect(breakfast.ingredients, ['Oats', 'Milk']);
    });

    test('is const-constructible and canonicalised', () {
      const other = Meal(
        id: '1',
        name: 'Porridge',
        description: 'A warm, simple breakfast.',
        category: MealCategory.breakfast,
        estimatedPrepTime: Duration(minutes: 5),
        ingredients: ['Oats', 'Milk'],
      );

      expect(identical(breakfast, other), isTrue);
    });

    test('implements value equality, including ingredient lists', () {
      final other = Meal(
        id: '1',
        name: 'Porridge',
        description: 'A warm, simple breakfast.',
        category: MealCategory.breakfast,
        estimatedPrepTime: const Duration(minutes: 5),
        ingredients: ['Oats', 'Milk'],
      );

      expect(breakfast, equals(other));
      expect(breakfast.hashCode, equals(other.hashCode));
    });

    test('is not equal when a scalar field differs', () {
      final different = Meal(
        id: '2',
        name: 'Porridge',
        description: 'A warm, simple breakfast.',
        category: MealCategory.breakfast,
        estimatedPrepTime: const Duration(minutes: 5),
        ingredients: ['Oats', 'Milk'],
      );

      expect(breakfast, isNot(equals(different)));
    });

    test('is not equal when ingredients differ', () {
      final different = Meal(
        id: '1',
        name: 'Porridge',
        description: 'A warm, simple breakfast.',
        category: MealCategory.breakfast,
        estimatedPrepTime: const Duration(minutes: 5),
        ingredients: ['Oats', 'Honey'],
      );

      expect(breakfast, isNot(equals(different)));
    });

    test('exposes all MealCategory values', () {
      expect(MealCategory.values, [
        MealCategory.breakfast,
        MealCategory.lunch,
        MealCategory.dinner,
        MealCategory.snack,
      ]);
    });

    test('toString includes key fields', () {
      expect(breakfast.toString(), contains('Porridge'));
      expect(breakfast.toString(), contains('MealCategory.breakfast'));
    });
  });
}
