import 'package:flutter_test/flutter_test.dart';
import 'package:mobile/domain/models/ingredient.dart';

void main() {
  const chickenBreast = Ingredient(
    id: '1',
    name: 'Chicken Breast',
    defaultUnit: 'g',
  );

  group('Ingredient', () {
    test('assigns constructor arguments to fields', () {
      expect(chickenBreast.id, '1');
      expect(chickenBreast.name, 'Chicken Breast');
      expect(chickenBreast.defaultUnit, 'g');
    });

    test('defaultUnit is optional and defaults to null', () {
      const salt = Ingredient(id: '2', name: 'Salt');
      expect(salt.defaultUnit, isNull);
    });

    test('is const-constructible and canonicalised', () {
      const other = Ingredient(
        id: '1',
        name: 'Chicken Breast',
        defaultUnit: 'g',
      );

      expect(identical(chickenBreast, other), isTrue);
    });

    test('implements value equality', () {
      final other = Ingredient(
        id: '1',
        name: 'Chicken Breast',
        defaultUnit: 'g',
      );

      expect(chickenBreast, equals(other));
      expect(chickenBreast.hashCode, equals(other.hashCode));
    });

    test('is not equal when id differs', () {
      final different = Ingredient(
        id: '2',
        name: 'Chicken Breast',
        defaultUnit: 'g',
      );

      expect(chickenBreast, isNot(equals(different)));
    });

    test('is not equal when name differs', () {
      final different = Ingredient(
        id: '1',
        name: 'Chicken Thigh',
        defaultUnit: 'g',
      );

      expect(chickenBreast, isNot(equals(different)));
    });

    test('is not equal when defaultUnit differs', () {
      final different = Ingredient(
        id: '1',
        name: 'Chicken Breast',
        defaultUnit: 'kg',
      );

      expect(chickenBreast, isNot(equals(different)));
    });

    test('toString includes key fields', () {
      expect(chickenBreast.toString(), contains('Chicken Breast'));
      expect(chickenBreast.toString(), contains('g'));
    });
  });
}
