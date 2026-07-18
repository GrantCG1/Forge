import 'package:flutter_test/flutter_test.dart';
import 'package:mobile/domain/models/ingredient.dart';
import 'package:mobile/domain/models/shopping_item.dart';

void main() {
  const eggs = Ingredient(id: '1', name: 'Eggs', defaultUnit: 'whole');

  group('ShoppingItem', () {
    const eggsToBuy = ShoppingItem(
      ingredient: eggs,
      quantity: 12,
      unit: 'whole',
    );

    test('assigns constructor arguments to fields', () {
      expect(eggsToBuy.ingredient, eggs);
      expect(eggsToBuy.quantity, 12);
      expect(eggsToBuy.unit, 'whole');
    });

    test('purchased defaults to false', () {
      expect(eggsToBuy.purchased, isFalse);
    });

    test('purchased can be set explicitly', () {
      const purchasedEggs = ShoppingItem(
        ingredient: eggs,
        quantity: 12,
        unit: 'whole',
        purchased: true,
      );

      expect(purchasedEggs.purchased, isTrue);
    });

    test('is const-constructible and canonicalised', () {
      const other = ShoppingItem(
        ingredient: eggs,
        quantity: 12,
        unit: 'whole',
      );

      expect(identical(eggsToBuy, other), isTrue);
    });

    test('implements value equality', () {
      final other = ShoppingItem(
        ingredient: eggs,
        quantity: 12,
        unit: 'whole',
      );

      expect(eggsToBuy, equals(other));
      expect(eggsToBuy.hashCode, equals(other.hashCode));
    });

    test('is not equal when quantity differs', () {
      final different = ShoppingItem(
        ingredient: eggs,
        quantity: 6,
        unit: 'whole',
      );

      expect(eggsToBuy, isNot(equals(different)));
    });

    test('is not equal when purchased differs', () {
      final different = ShoppingItem(
        ingredient: eggs,
        quantity: 12,
        unit: 'whole',
        purchased: true,
      );

      expect(eggsToBuy, isNot(equals(different)));
    });

    test('is not equal when the underlying ingredient differs', () {
      const milk = Ingredient(id: '2', name: 'Milk', defaultUnit: 'ml');
      final different = ShoppingItem(
        ingredient: milk,
        quantity: 12,
        unit: 'whole',
      );

      expect(eggsToBuy, isNot(equals(different)));
    });

    test('toString includes key fields', () {
      expect(eggsToBuy.toString(), contains('Eggs'));
      expect(eggsToBuy.toString(), contains('12'));
      expect(eggsToBuy.toString(), contains('purchased: false'));
    });
  });
}
