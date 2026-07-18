import 'ingredient.dart';

/// Something the user intends to purchase.
///
/// A [ShoppingItem] pairs an [Ingredient] with a quantity to buy. It
/// deliberately does not know *why* it exists — it holds no reference to
/// any recipe, meal or plan that generated it. Those relationships belong
/// to whatever future logic assembles a shopping list, not to this simple
/// value object. This is a pure, immutable data holder: it carries no
/// business logic, persistence or networking.
class ShoppingItem {
  /// Creates a [ShoppingItem].
  const ShoppingItem({
    required this.ingredient,
    required this.quantity,
    required this.unit,
    this.purchased = false,
  });

  /// Which ingredient this shopping item refers to.
  final Ingredient ingredient;

  /// How much of the ingredient is intended to be purchased.
  final double quantity;

  /// The unit [quantity] is measured in, e.g. "g", "ml" or "whole".
  final String unit;

  /// Whether this item has already been purchased.
  final bool purchased;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ShoppingItem &&
        other.ingredient == ingredient &&
        other.quantity == quantity &&
        other.unit == unit &&
        other.purchased == purchased;
  }

  @override
  int get hashCode => Object.hash(ingredient, quantity, unit, purchased);

  @override
  String toString() =>
      'ShoppingItem(ingredient: ${ingredient.name}, quantity: $quantity, '
      'unit: $unit, purchased: $purchased)';
}
