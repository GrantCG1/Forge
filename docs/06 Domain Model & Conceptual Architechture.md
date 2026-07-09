# Forge Domain Model & Conceptual Architecture

**Version:** 0.1  
**Status:** Draft  
**Owner:** Grant Groenewald  
**Contributors:** Grant Groenewald, ChatGPT  
**Last Updated:** 9 July 2026

---

# Purpose

The Domain Model defines the conceptual structure of Forge.

Rather than describing databases or software architecture, this document identifies the core concepts that exist within Forge and explains how they relate to one another.

Every feature, recommendation and interaction should ultimately be traceable back to these concepts.

---

# Philosophy

Forge is not built around workouts, recipes or goals.

Forge is built around understanding a person's lifestyle well enough to assist them in making better decisions.

The domain model therefore represents three interconnected worlds:

- The Physical World
- The Human World
- The Intelligence World

The purpose of Forge is to connect these worlds.

---

# Conceptual Architecture

```
Lifestyle
        │
        ▼
Human Understanding
        │
        ▼
Forge Intelligence
        │
        ▼
Recommendations
        │
        ▼
Physical Actions
```

The user lives within the Human World.

Forge understands the user through the Intelligence World.

Recommendations translate understanding into action within the Physical World.

---

# Domain Overview

Forge consists of six primary domains.

```
Forge

├── Lifestyle
├── Nutrition
├── Fitness
├── Health
├── Learning
└── Intelligence
```

Each domain owns a collection of concepts.

---

# 1. Lifestyle Domain

## Purpose

Represents who the user is and how they live.

This domain provides the context for all recommendations.

---

## Core Concepts

### User

Represents the individual using Forge.

Owns all personal information and relationships.

---

### Lifestyle

Represents the user's way of living.

Examples include:

- daily routine
- work schedule
- family commitments
- hobbies
- preferred pace of life

Lifestyle changes slowly over time.

---

### Goals

Long-term aspirations.

Examples:

- Build muscle
- Improve cardiovascular fitness
- Recover from injury
- Cook more often
- Improve nutrition

Goals provide direction.

---

### Objectives

Short-term targets.

Examples:

- Gym three times this week
- Meal prep on Sunday
- Stretch every evening

Objectives support goals.

---

### Preferences

Represents how the user prefers to live.

Examples:

- Cooking difficulty
- Workout intensity
- Budget
- Cuisine
- Home gym
- Outdoor exercise

Preferences influence recommendations.

---

### Budget

Represents financial boundaries.

Forge should recommend healthy living that remains financially sustainable.

---

### Schedule

Represents recurring commitments.

Examples:

- Work
- Church
- Golf
- Family dinners

Forge plans around life rather than expecting life to adapt.

---

### Time Availability

Represents available time for:

- cooking
- workouts
- recovery
- shopping

Time is dynamic.

---

# 2. Nutrition Domain

## Purpose

Represents food, cooking and nutrition.

---

## Core Concepts

### Recipe

A catalogue item describing how to prepare a meal.

Contains:

- ingredients
- preparation steps
- preparation time
- nutrition
- cooking difficulty
- cuisine
- tags

Recipes remain constant.

---

### Meal

A selected recipe prepared at a particular time.

A meal references a recipe.

Meals are experiences.

---

### Ingredient

Individual food items.

Ingredients may belong to multiple recipes.

---

### Pantry

Represents ingredients currently available.

Recommendations should prioritise existing ingredients where practical.

---

### Grocery List

A generated collection of required ingredients.

Always requires user confirmation.

---

### Meal Plan

A sequence of planned meals.

Meal plans remain flexible and adaptive.

---

# 3. Fitness Domain

## Purpose

Represents physical activity.

---

## Core Concepts

### Exercise

The smallest physical activity.

Examples:

- Squat
- Bench Press
- Walking Lunge

---

### Workout

A collection of exercises.

Examples:

- Push
- Pull
- Legs
- Mobility

---

### Training Session

A scheduled instance of a workout.

Example:

Monday 17:30 — Pull Session

Training sessions represent actual events.

---

### Programme

A structured collection of workouts.

May adapt over time.

---

### Equipment

Represents available equipment.

Examples:

- Home gym
- Resistance bands
- Commercial gym
- No equipment

Recommendations should respect equipment availability.

---

# 4. Health Domain

## Purpose

Represents wellbeing and physical limitations.

---

## Core Concepts

### Injury

Represents diagnosed or reported injuries.

Forge should adapt recommendations accordingly.

Forge should never replace professional medical advice.

---

### Rehabilitation Plan

A structured recovery programme.

May contain:

- mobility work
- strengthening exercises
- progression stages

---

### Recovery Activity

Examples:

- Stretching
- Foam rolling
- Walking
- Mobility

Recovery supports sustainable health.

---

### Health Constraints

Represents conditions that influence recommendations.

Examples:

- Knee pain
- Shoulder injury
- Asthma

---

# 5. Learning Domain

## Purpose

Represents knowledge.

Forge teaches while assisting.

---

## Core Concepts

### Lesson

Structured educational content.

---

### Explanation

Contextual learning attached to recommendations.

Example:

"Why was Chicken Orzo recommended?"

---

### Tip

Short practical guidance.

---

### Knowledge Topic

Long-term educational content.

Examples:

- Protein
- Recovery
- Progressive overload
- Budget cooking

---

### Learning Path

A sequence of lessons.

Allows gradual education.

---

# 6. Intelligence Domain

## Purpose

Represents Forge's understanding.

Unlike the other domains, this domain models understanding rather than physical objects.

---

## Core Concepts

### Recommendation

The central output of Forge.

A recommendation combines:

- evidence
- context
- user understanding

Recommendations always include reasoning.

---

### Observation

Something Forge notices.

Example:

"You appear to enjoy shorter recipes."

Observations should be phrased with humility.

---

### Pattern

A repeated behaviour.

Examples:

- Preferred workout times
- Favourite cuisines
- Motivation trends

Patterns increase confidence.

---

### Experience

Represents how an activity felt.

Examples:

- Energising
- Relaxing
- Difficult
- Enjoyable

Experiences are more valuable than completion alone.

---

### Feedback

Explicit user responses.

Examples:

- Like
- Dislike
- Too difficult
- Too expensive

---

### Context

Represents the user's current situation.

Examples:

- Time available
- Energy
- Motivation
- Weather
- Schedule

Context changes daily.

---

### Confidence

Represents Forge's confidence in its understanding.

Confidence increases gradually through evidence.

Forge should communicate uncertainty honestly.

---

# Relationships

```
User

├── Lifestyle
├── Goals
├── Objectives
├── Preferences
├── Budget
├── Schedule
│
├── Nutrition
│   ├── Recipes
│   ├── Meals
│   └── Grocery Lists
│
├── Fitness
│   ├── Workouts
│   ├── Training Sessions
│   └── Equipment
│
├── Health
│   ├── Injuries
│   └── Recovery
│
├── Learning
│
└── Intelligence
     ├── Observations
     ├── Patterns
     ├── Experiences
     └── Recommendations
```

---

# Ownership Principles

Each concept belongs to one primary domain.

Domains communicate through well-defined relationships.

The Intelligence Domain does not own physical data.

Instead, it interprets information from every other domain.

---

# Guiding Principles

Every concept within Forge should satisfy at least one of the following purposes:

- Understand the user.
- Understand the user's circumstances.
- Improve recommendations.
- Reduce cognitive load.
- Educate the user.
- Support healthier decisions.
- Build long-term trust.

If a concept satisfies none of these, it likely does not belong within Forge.

---

# Guiding Statement

> Forge does not seek to understand workouts, meals or schedules in isolation.

> Forge seeks to understand people well enough to help them make healthier, more confident decisions throughout their lives.
