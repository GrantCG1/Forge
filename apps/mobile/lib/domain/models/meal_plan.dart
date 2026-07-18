import 'meal.dart';

/// A named collection of planned [Meal]s, e.g. "Today's Plan", "Week Plan"
/// or "Holiday Plan".
///
/// A [MealPlan] groups Meals — occurrences within a plan — not Recipes.
/// Recipes remain reusable catalogue items independent of any plan; a
/// meal plan is concerned with *when and what will be eaten*, which is
/// exactly what [Meal] already represents. This is a pure, immutable data
/// holder: it carries no business logic, persistence or networking.
class MealPlan {
  /// Creates a [MealPlan].
  const MealPlan({
    required this.id,
    required this.name,
    required this.meals,
    this.startDate,
    this.endDate,
  });

  /// Uniquely identifies this meal plan.
  final String id;

  /// The plan's display name, e.g. "Today's Plan" or "Week Plan".
  final String name;

  /// The meals included in this plan.
  ///
  /// Callers should treat this list as read-only. It is not defensively
  /// copied, so that this class can remain `const`-constructible when
  /// given a const list literal.
  final List<Meal> meals;

  /// When this plan begins, if known.
  final DateTime? startDate;

  /// When this plan ends, if known.
  final DateTime? endDate;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is MealPlan &&
        other.id == id &&
        other.name == name &&
        _listEquals(other.meals, meals) &&
        other.startDate == startDate &&
        other.endDate == endDate;
  }

  @override
  int get hashCode =>
      Object.hash(id, name, Object.hashAll(meals), startDate, endDate);

  @override
  String toString() =>
      'MealPlan(id: $id, name: $name, meals: $meals, '
      'startDate: $startDate, endDate: $endDate)';
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
