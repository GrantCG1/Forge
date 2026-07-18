/// The broad area a [LearningTopic] relates to.
enum LearningTopicCategory {
  /// Topics about food, diet and nutrition science.
  nutrition,

  /// Topics about exercise and training.
  fitness,

  /// Topics about rest, rehabilitation and recovery.
  recovery,

  /// Topics about habits, routine and day-to-day living.
  lifestyle,
}

/// A single piece of educational content within Forge's shared learning
/// vocabulary.
///
/// This is a pure, immutable data holder — it carries no business logic,
/// persistence or networking. It exists so that every layer of Forge
/// (Presentation, Application, Decision, Knowledge) can describe a
/// learning topic using the same shared vocabulary.
class LearningTopic {
  /// Creates a [LearningTopic].
  const LearningTopic({
    required this.id,
    required this.title,
    required this.description,
    required this.category,
  });

  /// Uniquely identifies this learning topic.
  final String id;

  /// The topic's display title, e.g. "Understanding Protein".
  final String title;

  /// A concise description of what this topic covers.
  final String description;

  /// Which broad area this topic relates to.
  final LearningTopicCategory category;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is LearningTopic &&
        other.id == id &&
        other.title == title &&
        other.description == description &&
        other.category == category;
  }

  @override
  int get hashCode => Object.hash(id, title, description, category);

  @override
  String toString() =>
      'LearningTopic(id: $id, title: $title, category: $category)';
}
