# Forge Domain Relationships & Ownership

**Version:** 0.1  
**Status:** Draft  
**Owner:** Grant Groenewald  
**Contributors:** Grant Groenewald, ChatGPT  
**Last Updated:** 9 July 2026

---

# Purpose

This document defines how Forge's domains interact and which domain owns each concept.

It establishes clear ownership boundaries to ensure that the system remains modular, maintainable and scalable as Forge evolves.

The goal is to prevent tightly coupled features and ensure every concept has a clear home within the architecture.

---

# Scope

This document defines:

- Domain ownership
- Relationships between concepts
- Aggregate roots
- Object lifecycles
- Cross-domain communication
- Architectural boundaries

This document does **not** define implementation details or database structures.

---

# Audience

This document is intended for:

- Software Engineers
- Product Designers
- Solution Architects
- AI Engineers

---

# Dependencies

This document should be read after:

- Product Charter
- Intelligence Philosophy
- Domain Model & Conceptual Architecture

---

# Ownership Philosophy

Every concept within Forge belongs to one primary domain.

A concept may be referenced by many domains, but it should only be owned by one.

Ownership defines:

- responsibility
- lifecycle
- validation
- business rules

This ensures every concept has a single source of truth.

---

# Domain Ownership

## Lifestyle Domain

Owns:

- User
- Lifestyle
- Goals
- Objectives
- Preferences
- Budget
- Schedule
- Time Availability

This domain represents who the user is.

---

## Nutrition Domain

Owns:

- Recipe
- Ingredient
- Pantry
- Grocery List
- Meal Plan
- Meal

---

## Fitness Domain

Owns:

- Exercise
- Workout
- Training Session
- Programme
- Equipment

---

## Health Domain

Owns:

- Injury
- Rehabilitation Plan
- Recovery Activity
- Health Constraints

---

## Learning Domain

Owns:

- Lesson
- Explanation
- Tip
- Knowledge Topic
- Learning Path

---

## Intelligence Domain

Owns:

- Recommendation
- Observation
- Pattern
- Context
- Experience
- Feedback
- Confidence

The Intelligence Domain owns understanding.

It does not own user data.

---

# Aggregate Roots

Aggregate Roots define the entry point into each collection of related concepts.

---

## User

```
User

├── Lifestyle

├── Goals

├── Objectives

├── Preferences

├── Budget

├── Schedule

└── Time Availability
```

---

## Recipe

```
Recipe

├── Ingredients

├── Nutrition

├── Preparation Steps

├── Tags

└── Difficulty
```

---

## Workout

```
Workout

├── Exercises

├── Duration

├── Equipment Requirements

└── Target Muscle Groups
```

---

## Meal Plan

```
Meal Plan

├── Meals

└── Grocery List
```

---

## Rehabilitation Plan

```
Rehabilitation Plan

├── Recovery Activities

├── Exercises

└── Progression Stages
```

---

# Relationship Principles

Relationships should always be simple and intentional.

Examples:

```
Meal

↓

references

↓

Recipe
```

A Meal does not own a Recipe.

---

```
Training Session

↓

references

↓

Workout
```

A Training Session is an instance of a Workout.

---

```
Recommendation

↓

references

↓

Workout

Meal

Recovery Activity

Lesson
```

Recommendations reference concepts across multiple domains.

---

# Object Lifecycles

## Recipe Lifecycle

```
Recipe

↓

Meal Plan

↓

Meal

↓

Experience

↓

Feedback
```

---

## Workout Lifecycle

```
Workout

↓

Training Session

↓

Experience

↓

Feedback
```

---

## Learning Lifecycle

```
Lesson

↓

Recommendation

↓

User

↓

Feedback

↓

Pattern
```

---

# Cross-Domain Communication

Domains should not directly manipulate one another.

Instead, interactions should occur through the Intelligence Domain.

Example:

```
Fitness

↓

Recommendation Engine

↓

Nutrition
```

rather than

```
Fitness

↓

Nutrition
```

This keeps the architecture modular and prevents unnecessary coupling.

---

# Shared Concepts

Some concepts are intentionally shared across domains.

These include:

- Context
- Recommendation
- Experience
- Observation
- Feedback

These concepts belong to the Intelligence Domain because they describe understanding rather than physical entities.

---

# Architectural Rules

## Rule 1

Each concept has exactly one owner.

---

## Rule 2

Domains communicate through defined interfaces.

---

## Rule 3

Business rules remain within the owning domain.

---

## Rule 4

The Intelligence Domain may reference every domain.

No other domain may assume ownership of Intelligence concepts.

---

## Rule 5

Recommendations never own the objects they recommend.

They reference them.

---

## Rule 6

Experiences belong to the user, not to workouts or meals.

The same workout may create different experiences for different users.

---

## Rule 7

Preferences influence recommendations.

They never permanently modify Recipes or Workouts.

---

# Future Considerations

The architecture should support future capabilities including:

- Household profiles
- Shared meal planning
- Community recipes
- Professional coaching
- Wearable integrations
- Shopping integrations
- Physiotherapist programmes
- AI-generated recipes
- AI-generated workouts

These should extend existing domains rather than introduce unnecessary new ones.

---

# Guiding Statement

> Every concept in Forge has one home, one owner and one responsibility.

Clear ownership enables adaptability, maintainability and long-term evolution.
