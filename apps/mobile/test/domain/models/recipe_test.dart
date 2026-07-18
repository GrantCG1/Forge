import 'package:flutter_test/flutter_test.dart';
import 'package:mobile/domain/models/ingredient.dart';
import 'package:mobile/domain/models/recipe.dart';

void main() {
  const chickenBreast = Ingredient(
    id: '1',
    name: 'Chicken Breast',
    defaultUnit: 'g',
  );
  const milk = Ingredient(id: '2', name: 'Milk', defaultUnit: 'ml');

  group('RecipeIngredient', () {
    const chicken200g = RecipeIngredient(
      ingredient: chickenBreast,
      quantity: 200,
      unit: 'g',
    );

    test('assigns constructor arguments to fields', () {
      expect(chicken200g.ingredient, chickenBreast);
      expect(chicken200g.quantity, 200);
      expect(chicken200g.unit, 'g');
    });

    test('is const-constructible and canonicalised', () {
      const other = RecipeIngredient(
        ingredient: chickenBreast,
        quantity: 200,
        unit: 'g',
      );

      expect(identical(chicken200g, other), isTrue);
    });

    test('implements value equality', () {
      final other = RecipeIngredient(
        ingredient: chickenBreast,
        quantity: 200,
        unit: 'g',
      );

      expect(chicken200g, equals(other));
      expect(chicken200g.hashCode, equals(other.hashCode));
    });

    test('is not equal when quantity differs', () {
      final different = RecipeIngredient(
        ingredient: chickenBreast,
        quantity: 150,
        unit: 'g',
      );

      expect(chicken200g, isNot(equals(different)));
    });

    test('is not equal when unit differs', () {
      final different = RecipeIngredient(
        ingredient: chickenBreast,
        quantity: 200,
        unit: 'kg',
      );

      expect(chicken200g, isNot(equals(different)));
    });

    test('is not equal when the underlying ingredient differs', () {
      final different = RecipeIngredient(
        ingredient: milk,
        quantity: 200,
        unit: 'g',
      );

      expect(chicken200g, isNot(equals(different)));
    });

    test('toString includes key fields', () {
      expect(chicken200g.toString(), contains('Chicken Breast'));
      expect(chicken200g.toString(), contains('200'));
      expect(chicken200g.toString(), contains('g'));
    });
  });

  group('Recipe', () {
    const pastaIngredients = [
      RecipeIngredient(ingredient: chickenBreast, quantity: 200, unit: 'g'),
      RecipeIngredient(ingredient: milk, quantity: 100, unit: 'ml'),
    ];
    const pastaInstructions = [
      'Cook the pasta.',
      'Cook the chicken.',
      'Combine and serve.',
    ];

    const pastaRecipe = Recipe(
      id: '1',
      name: 'Chicken & Vegetable Pasta',
      description: 'Something nourishing to end the day.',
      servings: 2,
      ingredients: pastaIngredients,
      instructions: pastaInstructions,
      prepTimeMinutes: 10,
      cookTimeMinutes: 20,
    );

    test('assigns constructor arguments to fields', () {
      expect(pastaRecipe.id, '1');
      expect(pastaRecipe.name, 'Chicken & Vegetable Pasta');
      expect(pastaRecipe.description, 'Something nourishing to end the day.');
      expect(pastaRecipe.servings, 2);
      expect(pastaRecipe.ingredients, pastaIngredients);
      expect(pastaRecipe.instructions, pastaInstructions);
      expect(pastaRecipe.prepTimeMinutes, 10);
      expect(pastaRecipe.cookTimeMinutes, 20);
    });

    test('optional timing metadata defaults to null', () {
      const quickRecipe = Recipe(
        id: '2',
        name: 'Toast',
        description: 'A quick snack.',
        servings: 1,
        ingredients: [],
        instructions: ['Toast the bread.'],
      );

      expect(quickRecipe.prepTimeMinutes, isNull);
      expect(quickRecipe.cookTimeMinutes, isNull);
    });

    test('is const-constructible and canonicalised', () {
      const other = Recipe(
        id: '1',
        name: 'Chicken & Vegetable Pasta',
        description: 'Something nourishing to end the day.',
        servings: 2,
        ingredients: pastaIngredients,
        instructions: pastaInstructions,
        prepTimeMinutes: 10,
        cookTimeMinutes: 20,
      );

      expect(identical(pastaRecipe, other), isTrue);
    });

    test(
      'implements value equality, including ingredients and instructions',
      () {
        final other = Recipe(
          id: '1',
          name: 'Chicken & Vegetable Pasta',
          description: 'Something nourishing to end the day.',
          servings: 2,
          ingredients: const [
            RecipeIngredient(
              ingredient: chickenBreast,
              quantity: 200,
              unit: 'g',
            ),
            RecipeIngredient(ingredient: milk, quantity: 100, unit: 'ml'),
          ],
          instructions: const [
            'Cook the pasta.',
            'Cook the chicken.',
            'Combine and serve.',
          ],
          prepTimeMinutes: 10,
          cookTimeMinutes: 20,
        );

        expect(pastaRecipe, equals(other));
        expect(pastaRecipe.hashCode, equals(other.hashCode));
      },
    );

    test('is not equal when servings differ', () {
      final different = Recipe(
        id: '1',
        name: 'Chicken & Vegetable Pasta',
        description: 'Something nourishing to end the day.',
        servings: 4,
        ingredients: pastaIngredients,
        instructions: pastaInstructions,
        prepTimeMinutes: 10,
        cookTimeMinutes: 20,
      );

      expect(pastaRecipe, isNot(equals(different)));
    });

    test('is not equal when ingredients differ', () {
      final different = Recipe(
        id: '1',
        name: 'Chicken & Vegetable Pasta',
        description: 'Something nourishing to end the day.',
        servings: 2,
        ingredients: const [
          RecipeIngredient(
            ingredient: chickenBreast,
            quantity: 250,
            unit: 'g',
          ),
        ],
        instructions: pastaInstructions,
        prepTimeMinutes: 10,
        cookTimeMinutes: 20,
      );

      expect(pastaRecipe, isNot(equals(different)));
    });

    test('is not equal when instructions differ', () {
      final different = Recipe(
        id: '1',
        name: 'Chicken & Vegetable Pasta',
        description: 'Something nourishing to end the day.',
        servings: 2,
        ingredients: pastaIngredients,
        instructions: const ['Just microwave it.'],
        prepTimeMinutes: 10,
        cookTimeMinutes: 20,
      );

      expect(pastaRecipe, isNot(equals(different)));
    });

    test('toString includes key fields', () {
      expect(pastaRecipe.toString(), contains('Chicken & Vegetable Pasta'));
      expect(pastaRecipe.toString(), contains('servings: 2'));
    });
  });
}
