import 'package:flutter_test/flutter_test.dart';
import 'package:mobile/domain/models/learning_topic.dart';

void main() {
  const topic = LearningTopic(
    id: '1',
    title: 'Understanding Protein',
    description: 'Why protein matters and how much you need.',
    category: LearningTopicCategory.nutrition,
  );

  group('LearningTopic', () {
    test('assigns constructor arguments to fields', () {
      expect(topic.id, '1');
      expect(topic.title, 'Understanding Protein');
      expect(
        topic.description,
        'Why protein matters and how much you need.',
      );
      expect(topic.category, LearningTopicCategory.nutrition);
    });

    test('is const-constructible and canonicalised', () {
      const other = LearningTopic(
        id: '1',
        title: 'Understanding Protein',
        description: 'Why protein matters and how much you need.',
        category: LearningTopicCategory.nutrition,
      );

      expect(identical(topic, other), isTrue);
    });

    test('implements value equality', () {
      final other = LearningTopic(
        id: '1',
        title: 'Understanding Protein',
        description: 'Why protein matters and how much you need.',
        category: LearningTopicCategory.nutrition,
      );

      expect(topic, equals(other));
      expect(topic.hashCode, equals(other.hashCode));
    });

    test('is not equal when category differs', () {
      final other = LearningTopic(
        id: '1',
        title: 'Understanding Protein',
        description: 'Why protein matters and how much you need.',
        category: LearningTopicCategory.fitness,
      );

      expect(topic, isNot(equals(other)));
    });

    test('exposes all LearningTopicCategory values', () {
      expect(LearningTopicCategory.values, [
        LearningTopicCategory.nutrition,
        LearningTopicCategory.fitness,
        LearningTopicCategory.recovery,
        LearningTopicCategory.lifestyle,
      ]);
    });

    test('toString includes key fields', () {
      expect(topic.toString(), contains('Understanding Protein'));
      expect(topic.toString(), contains('LearningTopicCategory.nutrition'));
    });
  });
}
