import 'ingredient.dart';

/// A specific quantity of an [Ingredient] required by a [Recipe].
///
/// This is what separates "Chicken Breast" (an [Ingredient] — a real-world
/// food) from "200g of Chicken Breast" (a [RecipeIngredient] — how much of
/// that food a particular recipe needs). A [Recipe] is a list of these,
/// not a list of bare [Ingredient]s.
class RecipeIngredient {
  /// Creates a [RecipeIngredient].
  const RecipeIngredient({
    required this.ingredient,
    required this.quantity,
    required this.unit,
  });

  /// Which ingredient this refers to.
  final Ingredient ingredient;

  /// How much of the ingredient is required, e.g. `200`.
  final double quantity;

  /// The unit [quantity] is measured in, e.g. "g", "ml" or "whole".
  final String unit;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is RecipeIngredient &&
        other.ingredient == ingredient &&
        other.quantity == quantity &&
        other.unit == unit;
  }

  @override
  int get hashCode => Object.hash(ingredient, quantity, unit);

  @override
  String toString() =>
      'RecipeIngredient(ingredient: ${ingredient.name}, '
      'quantity: $quantity, unit: $unit)';
}

/// A reusable catalogue item describing something that can be prepared.
///
/// A [Recipe] is deliberately a distinct concept from a Meal (see
/// `meal.dart`): a recipe describes *how to prepare a dish in general*
/// (its ingredients, quantities and instructions), independent of any
/// particular day or plan. A Meal represents a single occurrence of
/// eating something within a plan, and many Meals may reference the same
/// Recipe.
///
/// This is a pure, immutable data holder — it carries no business logic,
/// persistence, networking, or nutrition/calorie calculations.
class Recipe {
  /// Creates a [Recipe].
  const Recipe({
    required this.id,
    required this.name,
    required this.description,
    required this.servings,
    required this.ingredients,
    required this.instructions,
    this.prepTimeMinutes,
    this.cookTimeMinutes,
  });

  /// Uniquely identifies this recipe.
  final String id;

  /// The recipe's display name, e.g. "Chicken & Vegetable Pasta".
  final String name;

  /// A short description of the recipe.
  final String description;

  /// How many servings this recipe yields.
  final int servings;

  /// The ingredients, with quantities, required to prepare this recipe.
  ///
  /// Callers should treat this list as read-only. It is not defensively
  /// copied, so that this class can remain `const`-constructible when
  /// given a const list literal.
  final List<RecipeIngredient> ingredients;

  /// The step-by-step instructions to prepare this recipe.
  ///
  /// Callers should treat this list as read-only, for the same reason as
  /// [ingredients].
  final List<String> instructions;

  /// How long the recipe takes to prepare, in minutes, if known.
  final int? prepTimeMinutes;

  /// How long the recipe takes to cook, in minutes, if known.
  final int? cookTimeMinutes;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Recipe &&
        other.id == id &&
        other.name == name &&
        other.description == description &&
        other.servings == servings &&
        _listEquals(other.ingredients, ingredients) &&
        _listEquals(other.instructions, instructions) &&
        other.prepTimeMinutes == prepTimeMinutes &&
        other.cookTimeMinutes == cookTimeMinutes;
  }

  @override
  int get hashCode => Object.hash(
    id,
    name,
    description,
    servings,
    Object.hashAll(ingredients),
    Object.hashAll(instructions),
    prepTimeMinutes,
    cookTimeMinutes,
  );

  @override
  String toString() =>
      'Recipe(id: $id, name: $name, servings: $servings, '
      'ingredients: $ingredients, instructions: $instructions)';
}

/// Compares two lists for element-wise equality.
///
/// Written by hand (rather than importing `package:collection`) to avoid
/// introducing a new dependency for this comparison.
bool _listEquals<T>(List<T> a, List<T> b) {
  if (identical(a, b)) return true;
  if (a.length != b.length) return false;
  for (var i = 0; i < a.length; i++) {
    if (a[i] != b[i]) return false;
  }
  return true;
}
