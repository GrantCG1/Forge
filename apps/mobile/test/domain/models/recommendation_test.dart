import 'package:flutter_test/flutter_test.dart';
import 'package:mobile/domain/models/recommendation.dart';

void main() {
  const recommendation = Recommendation(
    id: '1',
    title: 'Try a recovery walk today',
    description: 'A short walk can help with recovery.',
    recommendationType: RecommendationType.activity,
    confidence: 0.8,
  );

  group('Recommendation', () {
    test('assigns constructor arguments to fields', () {
      expect(recommendation.id, '1');
      expect(recommendation.title, 'Try a recovery walk today');
      expect(
        recommendation.description,
        'A short walk can help with recovery.',
      );
      expect(recommendation.recommendationType, RecommendationType.activity);
      expect(recommendation.confidence, 0.8);
    });

    test('is const-constructible and canonicalised', () {
      const other = Recommendation(
        id: '1',
        title: 'Try a recovery walk today',
        description: 'A short walk can help with recovery.',
        recommendationType: RecommendationType.activity,
        confidence: 0.8,
      );

      expect(identical(recommendation, other), isTrue);
    });

    test('implements value equality', () {
      final other = Recommendation(
        id: '1',
        title: 'Try a recovery walk today',
        description: 'A short walk can help with recovery.',
        recommendationType: RecommendationType.activity,
        confidence: 0.8,
      );

      expect(recommendation, equals(other));
      expect(recommendation.hashCode, equals(other.hashCode));
    });

    test('is not equal when confidence differs', () {
      final other = Recommendation(
        id: '1',
        title: 'Try a recovery walk today',
        description: 'A short walk can help with recovery.',
        recommendationType: RecommendationType.activity,
        confidence: 0.4,
      );

      expect(recommendation, isNot(equals(other)));
    });

    test('rejects confidence outside the 0-1 range', () {
      expect(
        () => Recommendation(
          id: '1',
          title: 'Invalid',
          description: 'Invalid confidence.',
          recommendationType: RecommendationType.meal,
          confidence: 1.5,
        ),
        throwsA(isA<AssertionError>()),
      );
    });

    test('exposes all RecommendationType values', () {
      expect(RecommendationType.values, [
        RecommendationType.meal,
        RecommendationType.activity,
        RecommendationType.learning,
        RecommendationType.recovery,
      ]);
    });

    test('toString includes key fields', () {
      expect(
        recommendation.toString(),
        contains('Try a recovery walk today'),
      );
      expect(
        recommendation.toString(),
        contains('RecommendationType.activity'),
      );
    });
  });
}
