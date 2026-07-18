import 'ingredient.dart';

/// An [Ingredient] the user currently owns, and how much of it.
///
/// This represents current inventory — what is actually in the user's
/// pantry — as distinct from `ShoppingItem` (something they intend to
/// buy) and `RecipeIngredient` (how much a recipe requires). It
/// references the shared [Ingredient] catalogue rather than duplicating
/// ingredient details. This is a pure, immutable data holder: it carries
/// no business logic, persistence or networking.
class PantryItem {
  /// Creates a [PantryItem].
  const PantryItem({
    required this.ingredient,
    required this.quantity,
    required this.unit,
    this.expiryDate,
  });

  /// Which ingredient this pantry item refers to.
  final Ingredient ingredient;

  /// How much of the ingredient is currently owned.
  final double quantity;

  /// The unit [quantity] is measured in, e.g. "g", "ml" or "whole".
  final String unit;

  /// When this pantry item is expected to expire, if known.
  final DateTime? expiryDate;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is PantryItem &&
        other.ingredient == ingredient &&
        other.quantity == quantity &&
        other.unit == unit &&
        other.expiryDate == expiryDate;
  }

  @override
  int get hashCode => Object.hash(ingredient, quantity, unit, expiryDate);

  @override
  String toString() =>
      'PantryItem(ingredient: ${ingredient.name}, quantity: $quantity, '
      'unit: $unit, expiryDate: $expiryDate)';
}
