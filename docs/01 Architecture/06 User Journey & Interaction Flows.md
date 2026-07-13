# Forge User Journey & Interaction Flows

**Version:** 0.1  
**Status:** Draft  
**Owner:** Grant Groenewald  
**Contributors:** Grant Groenewald, ChatGPT  
**Last Updated:** 9 July 2026

---

# Purpose

This document defines the major user journeys within Forge.

Rather than focusing on screens, it describes the experiences users have while interacting with Forge.

Each journey demonstrates how Forge's philosophy, intelligence and information architecture combine to support healthier decision making.

---

# Scope

This document defines:

- Primary user journeys
- Decision points
- User interactions
- Adaptive behaviour
- Learning opportunities

This document does not define visual layouts or implementation.

---

# Audience

This document is intended for:

- Product Designers
- UX Designers
- Software Engineers
- AI Engineers
- Product Managers

---

# Dependencies

This document should be read after:

- UX Philosophy
- Intelligence Philosophy
- Decision Engine
- Information Architecture

---

# Journey Philosophy

Every interaction should answer one simple question:

> **"What is the next good decision?"**

Forge should reduce uncertainty rather than increase it.

Each journey should feel:

- Calm
- Supportive
- Intelligent
- Educational
- Adaptable

---

# Journey 1 — First Launch

## Goal

Introduce Forge without overwhelming the user.

---

### Experience

```
Forge

Helping you make healthier decisions.

Begin
```

The experience should feel calm and intentional.

---

### User Journey

```
Welcome

↓

Purpose

↓

Lifestyle Setup

↓

Goals

↓

Preferences

↓

Today's Plan
```

The objective is to reach value quickly.

---

# Journey 2 — Starting the Day

## Goal

Provide today's guidance.

---

### User Opens Forge

Forge immediately presents:

Today's Workout

Today's Meal

Today's Recovery

---

The user should understand:

- what to do
- why
- available alternatives

without needing to search.

---

### Decision Flow

```
Today

↓

Recommendation

↓

Explanation

↓

Alternative?

↓

Start
```

---

# Journey 3 — Completing a Workout

```
Today's Workout

↓

Workout Details

↓

Exercises

↓

Complete Workout

↓

Experience

↓

Reflection
```

After completion, Forge asks:

> How did today's workout feel?

The response improves future recommendations.

---

# Journey 4 — Preparing a Meal

```
Today's Meal

↓

Recipe

↓

Ingredients

↓

Preparation

↓

Meal Completed

↓

Experience
```

Optional learning appears naturally.

Example:

> Why is this meal high in protein?

Learning is never forced.

---

# Journey 5 — Adapting a Recommendation

Example:

> I only have twenty minutes.

---

```
Recommendation

↓

User Constraint

↓

Decision Engine

↓

Alternative Recommendation
```

Forge explains why the recommendation changed.

---

# Journey 6 — Injury Support

Example:

"My knee hurts today."

---

```
User reports issue

↓

Health Context

↓

Decision Engine

↓

Safer Recommendation

↓

Explanation

↓

Recovery Guidance
```

Forge never ignores health information.

Safety always takes priority.

---

# Journey 7 — Planning the Week

```
Weekly Plan

↓

Adjust Schedule

↓

Meal Plan

↓

Workout Plan

↓

Review

↓

Confirm
```

Forge suggests.

The user decides.

---

# Journey 8 — Grocery Planning

```
Meal Plan

↓

Required Ingredients

↓

Current Pantry

↓

Missing Ingredients

↓

Grocery List

↓

Confirm
```

Forge never assumes purchases.

Users always approve generated lists.

---

# Journey 9 — Learning

Learning begins with curiosity.

Not obligation.

---

```
Recommendation

↓

Learn More

↓

Short Explanation

↓

Detailed Lesson

↓

Related Topics
```

Users choose how deeply they wish to explore.

---

# Journey 10 — Asking Forge

The user may ask Forge questions at any time.

Examples:

- I don't have chicken.
- Suggest something quicker.
- Why this workout?
- What if I skip today?
- I have knee pain.
- Can I swap tomorrow and Friday?

---

Interaction Flow

```
Question

↓

Decision Engine

↓

Recommendation

↓

Reasoning

↓

Optional Learning
```

Conversation should always feel natural.

---

# Journey 11 — Missing a Day

Missing a recommendation should never feel like failure.

---

```
Recommendation Missed

↓

Forge Notices

↓

No Judgement

↓

Updated Context

↓

Revised Plan
```

Forge should respond with understanding.

Example:

> Yesterday looked busy.

> Shall we continue from today?

---

# Journey 12 — Long-Term Growth

Over months and years Forge gradually becomes more personal.

```
Experiences

↓

Patterns

↓

Understanding

↓

Better Decisions

↓

Greater Confidence
```

The user should notice that Forge increasingly understands how they live.

---
---

# Journey 13 – Import Recipe

## Goal

Allow users to add existing recipes to their personal Forge Library.

Forge should support recipes from family members, friends, books, websites, magazines, coaches and other trusted sources.

The objective is not to replace existing knowledge, but to organise and integrate it into the user's healthy lifestyle.

---

## User Flow

Recipe Source

↓

Choose Import Method

↓

Capture Recipe

↓

Forge Extracts Information

↓

User Reviews & Edits

↓

Recipe Categorised

↓

Recipe Added to Personal Library

↓

Available for Future Recommendations

---

## Import Methods

Forge should support multiple methods of importing recipes.

Examples include:

- Camera / Photograph
- Image
- PDF
- Manual Entry
- Copy & Paste
- Website URL *(Future)*

Additional import methods may be added without changing the overall user journey.

---

## Forge Responsibilities

During import Forge should:

- Extract recipe title
- Identify ingredients
- Estimate quantities
- Detect preparation method
- Estimate preparation time
- Estimate servings
- Estimate nutritional information where possible
- Identify potential allergens
- Detect duplicate recipes

Forge should ask the user for clarification whenever confidence is low.

---

## User Responsibilities

The user reviews:

- Title
- Ingredients
- Quantities
- Instructions
- Preparation time
- Difficulty
- Servings

The user always confirms the imported recipe before it becomes part of their Personal Library.

---

## Result

The recipe becomes a Personal Recipe.

Once saved, Forge treats Personal Recipes and Forge Recipes equally when generating recommendations.

The recipe may later be:

- Edited
- Categorised
- Added to meal plans
- Added to shopping lists
- Shared *(Future)*
- Deleted

---

# Journey 14 – Create Recipe

## Goal

Allow users to create recipes from scratch.

This supports family recipes, experimental recipes and meals that cannot be imported.

---

## User Flow

Create Recipe

↓

Enter Basic Details

↓

Add Ingredients

↓

Add Instructions

↓

Review

↓

Save

↓

Recipe Added to Personal Library

---

## Result

The recipe immediately becomes available for:

- Meal recommendations
- Meal planning
- Grocery planning
- Nutritional analysis
- Future editing

---

# Journey 15 – Import Workout

## Goal

Allow users to add existing workout programmes to their Personal Library.

These may originate from coaches, physiotherapists, friends, books or personal notes.

Forge should organise and integrate these workouts rather than replace them.

---

## User Flow

Workout Source

↓

Choose Import Method

↓

Capture Workout

↓

Forge Extracts Exercises

↓

User Reviews & Edits

↓

Workout Categorised

↓

Workout Added to Personal Library

↓

Available for Future Recommendations

---

## Import Methods

Supported methods include:

- Camera / Photograph
- Image
- PDF
- Manual Entry
- Copy & Paste

Future methods may include importing from supported fitness platforms.

---

## Forge Responsibilities

Forge should identify:

- Workout title
- Exercises
- Sets
- Repetitions
- Duration
- Equipment
- Muscle groups
- Difficulty

Forge should ask questions whenever information is incomplete.

---

## Result

The workout becomes a Personal Workout.

Forge may recommend it in future plans where appropriate.

---

# Journey 16 – Create Workout

## Goal

Allow users to build personalised workouts from scratch.

---

## User Flow

Create Workout

↓

Add Exercises

↓

Configure Workout

↓

Review

↓

Save

↓

Workout Added to Personal Library

---

## Result

The workout becomes available for:

- Daily recommendations
- Training plans
- Progress tracking
- Future editing

---

# Decision Points

Every major interaction presents three possible paths.

```
Accept

Modify

Explore
```

Forge should never force a single path.

---

# User Autonomy

Every recommendation can be:

- Accepted
- Adapted
- Replaced
- Ignored

The user always remains in control.

---

# Learning Opportunities

Learning should naturally emerge during interaction.

Examples:

Workout

↓

Why this exercise?

---

Recipe

↓

Why these ingredients?

---

Recovery

↓

Why does recovery matter?

Education supports decisions.

It should never interrupt them.

---

# Emotional Journey

Forge should leave the user feeling:

Before use

- Calm
- Curious

After planning

- Confident

After completion

- Accomplished

After reflection

- Understood

Forge should never create guilt or anxiety.

---

# Journey Principles

Every journey should:

- Begin simply.
- Explain clearly.
- Adapt naturally.
- Educate when appropriate.
- Respect user autonomy.
- End with greater understanding.

---

# Future Considerations

Future journeys may include:

- Household planning
- Community challenges
- Professional coaching
- Physiotherapist programmes
- Grocery delivery
- Wearable integration
- Voice interaction

These journeys should extend the existing experience rather than replace it.

---

# Guiding Statement

> Forge is not a sequence of screens.

> It is a sequence of thoughtful conversations that help people make healthier decisions throughout their lives.
