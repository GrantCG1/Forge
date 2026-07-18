/// The category a [Meal] belongs to.
enum MealCategory {
  /// The first meal of the day.
  breakfast,

  /// A midday meal.
  lunch,

  /// An evening meal.
  dinner,

  /// A small meal or bite eaten between main meals.
  snack,
}

/// A single meal within Forge's shared nutrition vocabulary.
///
/// This is a pure, immutable data holder — it carries no business logic,
/// persistence or networking. It exists so that every layer of Forge
/// (Presentation, Application, Decision, Knowledge) can describe a meal
/// using the same shared vocabulary.
class Meal {
  /// Creates a [Meal].
  const Meal({
    required this.id,
    required this.name,
    required this.description,
    required this.category,
    required this.estimatedPrepTime,
    required this.ingredients,
  });

  /// Uniquely identifies this meal.
  final String id;

  /// The meal's display name, e.g. "Chicken Orzo".
  final String name;

  /// A short description of the meal.
  final String description;

  /// Which category this meal belongs to.
  final MealCategory category;

  /// How long the meal is expected to take to prepare.
  final Duration estimatedPrepTime;

  /// The ingredients required to prepare this meal.
  ///
  /// Callers should treat this list as read-only. It is not defensively
  /// copied, so that this class can remain `const`-constructible when
  /// given a const list literal.
  final List<String> ingredients;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Meal &&
        other.id == id &&
        other.name == name &&
        other.description == description &&
        other.category == category &&
        other.estimatedPrepTime == estimatedPrepTime &&
        _listEquals(other.ingredients, ingredients);
  }

  @override
  int get hashCode => Object.hash(
    id,
    name,
    description,
    category,
    estimatedPrepTime,
    Object.hashAll(ingredients),
  );

  @override
  String toString() =>
      'Meal(id: $id, name: $name, category: $category, '
      'estimatedPrepTime: $estimatedPrepTime, ingredients: $ingredients)';
}

/// Compares two lists for element-wise equality.
///
/// Written by hand (rather than importing `package:collection`) to avoid
/// introducing a new dependency for this single comparison.
bool _listEquals<T>(List<T> a, List<T> b) {
  if (identical(a, b)) return true;
  if (a.length != b.length) return false;
  for (var i = 0; i < a.length; i++) {
    if (a[i] != b[i]) return false;
  }
  return true;
}
