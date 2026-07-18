/// How intense an [Activity] is expected to be.
enum ActivityIntensity {
  /// Gentle effort, suitable for recovery or low-capacity days.
  low,

  /// Sustained, moderate effort.
  moderate,

  /// Demanding, high-effort activity.
  high,
}

/// A single physical activity within Forge's shared fitness vocabulary.
///
/// This is a pure, immutable data holder — it carries no business logic,
/// persistence or networking. It exists so that every layer of Forge
/// (Presentation, Application, Decision, Knowledge) can describe an
/// activity using the same shared vocabulary.
class Activity {
  /// Creates an [Activity].
  const Activity({
    required this.id,
    required this.name,
    required this.description,
    required this.duration,
    required this.intensity,
  });

  /// Uniquely identifies this activity.
  final String id;

  /// The activity's display name, e.g. "Morning Walk".
  final String name;

  /// A short description of the activity.
  final String description;

  /// How long the activity is expected to take.
  final Duration duration;

  /// How intense the activity is.
  final ActivityIntensity intensity;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Activity &&
        other.id == id &&
        other.name == name &&
        other.description == description &&
        other.duration == duration &&
        other.intensity == intensity;
  }

  @override
  int get hashCode =>
      Object.hash(id, name, description, duration, intensity);

  @override
  String toString() =>
      'Activity(id: $id, name: $name, duration: $duration, '
      'intensity: $intensity)';
}
