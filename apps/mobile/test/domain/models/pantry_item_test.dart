import 'package:flutter_test/flutter_test.dart';
import 'package:mobile/domain/models/ingredient.dart';
import 'package:mobile/domain/models/pantry_item.dart';

void main() {
  const milk = Ingredient(id: '1', name: 'Milk', defaultUnit: 'ml');
  final expiry = DateTime(2026, 8, 1);

  group('PantryItem', () {
    final milkInPantry = PantryItem(
      ingredient: milk,
      quantity: 500,
      unit: 'ml',
      expiryDate: expiry,
    );

    test('assigns constructor arguments to fields', () {
      expect(milkInPantry.ingredient, milk);
      expect(milkInPantry.quantity, 500);
      expect(milkInPantry.unit, 'ml');
      expect(milkInPantry.expiryDate, expiry);
    });

    test('expiryDate is optional and defaults to null', () {
      const rice = Ingredient(id: '2', name: 'Rice');
      const riceInPantry = PantryItem(
        ingredient: rice,
        quantity: 1,
        unit: 'kg',
      );

      expect(riceInPantry.expiryDate, isNull);
    });

    test('is const-constructible when given const arguments', () {
      const a = PantryItem(ingredient: milk, quantity: 500, unit: 'ml');
      const b = PantryItem(ingredient: milk, quantity: 500, unit: 'ml');

      expect(identical(a, b), isTrue);
    });

    test('implements value equality', () {
      final other = PantryItem(
        ingredient: milk,
        quantity: 500,
        unit: 'ml',
        expiryDate: expiry,
      );

      expect(milkInPantry, equals(other));
      expect(milkInPantry.hashCode, equals(other.hashCode));
    });

    test('is not equal when quantity differs', () {
      final different = PantryItem(
        ingredient: milk,
        quantity: 250,
        unit: 'ml',
        expiryDate: expiry,
      );

      expect(milkInPantry, isNot(equals(different)));
    });

    test('is not equal when expiryDate differs', () {
      final different = PantryItem(
        ingredient: milk,
        quantity: 500,
        unit: 'ml',
        expiryDate: DateTime(2026, 9, 1),
      );

      expect(milkInPantry, isNot(equals(different)));
    });

    test('is not equal when the underlying ingredient differs', () {
      const rice = Ingredient(id: '2', name: 'Rice');
      final different = PantryItem(
        ingredient: rice,
        quantity: 500,
        unit: 'ml',
        expiryDate: expiry,
      );

      expect(milkInPantry, isNot(equals(different)));
    });

    test('toString includes key fields', () {
      expect(milkInPantry.toString(), contains('Milk'));
      expect(milkInPantry.toString(), contains('500'));
      expect(milkInPantry.toString(), contains('ml'));
    });
  });
}
