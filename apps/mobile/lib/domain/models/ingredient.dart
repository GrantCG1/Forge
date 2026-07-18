/// A real-world food ingredient, independent of any quantity.
///
/// This is a pure, immutable data holder — it carries no business logic,
/// persistence or networking. It describes what an ingredient *is* (e.g.
/// "Chicken Breast" or "Broccoli"), never how much of it is needed for a
/// particular recipe. Quantities belong to `RecipeIngredient` (see
/// `recipe.dart`), not here.
class Ingredient {
  /// Creates an [Ingredient].
  const Ingredient({required this.id, required this.name, this.defaultUnit});

  /// Uniquely identifies this ingredient.
  final String id;

  /// The ingredient's display name, e.g. "Chicken Breast".
  final String name;

  /// The unit this ingredient is typically measured in, e.g. "g" or "ml".
  ///
  /// This is optional display metadata only — it does not represent a
  /// quantity and has no bearing on any specific recipe.
  final String? defaultUnit;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Ingredient &&
        other.id == id &&
        other.name == name &&
        other.defaultUnit == defaultUnit;
  }

  @override
  int get hashCode => Object.hash(id, name, defaultUnit);

  @override
  String toString() =>
      'Ingredient(id: $id, name: $name, defaultUnit: $defaultUnit)';
}
