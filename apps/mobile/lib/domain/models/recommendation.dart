/// The kind of thing a [Recommendation] points to.
enum RecommendationType {
  /// Recommends a [Meal].
  meal,

  /// Recommends an [Activity].
  activity,

  /// Recommends a [LearningTopic].
  learning,

  /// Recommends a recovery action.
  recovery,
}

/// A single recommendation within Forge's shared Decision vocabulary.
///
/// This is a pure, immutable data holder — it carries no business logic,
/// persistence or networking. The Decision Engine will eventually produce
/// values shaped like this one; this class only describes what a
/// recommendation looks like, it does not decide which recommendation is
/// appropriate.
class Recommendation {
  /// Creates a [Recommendation].
  ///
  /// [confidence] must be between 0 (no confidence) and 1 (full
  /// confidence), inclusive.
  const Recommendation({
    required this.id,
    required this.title,
    required this.description,
    required this.recommendationType,
    required this.confidence,
  }) : assert(
         confidence >= 0 && confidence <= 1,
         'confidence must be between 0 and 1',
       );

  /// Uniquely identifies this recommendation.
  final String id;

  /// A short, human-readable title, e.g. "Try a recovery walk today".
  final String title;

  /// A concise explanation of the recommendation.
  final String description;

  /// What kind of thing this recommendation points to.
  final RecommendationType recommendationType;

  /// How confident Forge is in this recommendation, from `0` (none) to `1`
  /// (certain).
  final double confidence;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Recommendation &&
        other.id == id &&
        other.title == title &&
        other.description == description &&
        other.recommendationType == recommendationType &&
        other.confidence == confidence;
  }

  @override
  int get hashCode =>
      Object.hash(id, title, description, recommendationType, confidence);

  @override
  String toString() =>
      'Recommendation(id: $id, title: $title, '
      'recommendationType: $recommendationType, confidence: $confidence)';
}
