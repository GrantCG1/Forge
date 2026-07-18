import '../../domain/models/activity.dart';
import '../../domain/models/meal.dart';
import '../../domain/models/recommendation.dart';

/// Sample Forge domain data used to populate the Today screen prototype.
///
/// This file exists only so the presentation layer has something realistic
/// to render. It performs no networking, persistence or business logic,
/// and it is not a repository or service — it is simply a set of constant
/// domain objects. It will be replaced once an Application/Decision layer
/// exists to supply this data for real.

/// Today's breakfast.
const breakfastMeal = Meal(
  id: 'meal-breakfast-greek-yoghurt',
  name: 'Greek Yoghurt with Berries',
  description: 'A simple start to your morning.',
  category: MealCategory.breakfast,
  estimatedPrepTime: Duration(minutes: 5),
  ingredients: ['Greek yoghurt', 'Mixed berries', 'Honey'],
);

/// Today's lunch.
const lunchMeal = Meal(
  id: 'meal-lunch-chicken-wrap',
  name: 'Chicken Wrap with Salad',
  description: 'A balanced meal to keep you going.',
  category: MealCategory.lunch,
  estimatedPrepTime: Duration(minutes: 15),
  ingredients: [
    'Chicken breast',
    'Tortilla wrap',
    'Mixed salad',
    'Yoghurt dressing',
  ],
);

/// Today's dinner.
const dinnerMeal = Meal(
  id: 'meal-dinner-chicken-pasta',
  name: 'Chicken & Vegetable Pasta',
  description: 'Something nourishing to end the day.',
  category: MealCategory.dinner,
  estimatedPrepTime: Duration(minutes: 30),
  ingredients: ['Chicken breast', 'Pasta', 'Mixed vegetables', 'Olive oil'],
);

/// Today's planned activity.
const todaysActivity = Activity(
  id: 'activity-gym-session',
  name: 'Gym Session',
  description: 'A little movement, on your terms.',
  duration: Duration(minutes: 45),
  intensity: ActivityIntensity.moderate,
);

/// Upcoming recommendations shown on the Today screen.
const upcomingRecommendations = <Recommendation>[
  Recommendation(
    id: 'recommendation-grocery-shopping',
    title: 'Buy groceries',
    description: 'Stock up for the meals planned this week.',
    recommendationType: RecommendationType.meal,
    confidence: 0.8,
  ),
  Recommendation(
    id: 'recommendation-meal-prep',
    title: 'Meal prep',
    description: 'Prepare meals ahead of time.',
    recommendationType: RecommendationType.meal,
    confidence: 0.7,
  ),
  Recommendation(
    id: 'recommendation-padel',
    title: 'Padel on Saturday',
    description: 'A fun game of padel this weekend.',
    recommendationType: RecommendationType.activity,
    confidence: 0.6,
  ),
];
