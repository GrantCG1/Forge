# Forge Information Architecture & User Experience Structure

**Version:** 0.1  
**Status:** Draft  
**Owner:** Grant Groenewald  
**Contributors:** Grant Groenewald, ChatGPT  
**Last Updated:** 9 July 2026

---

# Purpose

The Information Architecture defines how information is organised, presented and discovered throughout Forge.

Its purpose is to ensure that users always encounter the right information at the right time while keeping the experience calm, understandable and actionable.

This document focuses on information rather than implementation.

---

# Scope

This document defines:

- Navigation philosophy
- Information hierarchy
- Screen ownership
- Progressive disclosure
- User experience structure
- Information flow

This document does not define visual design or implementation details.

---

# Audience

This document is intended for:

- Product Designers
- UX Designers
- Software Engineers
- Product Managers

---

# Dependencies

This document should be read after:

- UX Philosophy
- Intelligence Philosophy
- Domain Model
- Domain Relationships
- Decision Engine

---

# Information Philosophy

Forge is action-first.

Information exists to help users make better decisions.

Rather than presenting everything at once, Forge progressively reveals information as it becomes useful.

The objective is clarity rather than minimalism.

---

# Guiding Principle

Forge should never overwhelm the user with information.

Instead, it should progressively reveal the information that helps the user make the next good decision.

---

# Primary Navigation

Forge is organised around five primary destinations.

```
Today

Plan

Library

Progress

Profile
```

Each destination has a distinct purpose.

---

# Today

## Purpose

Help the user make today's decisions.

This is the primary screen of Forge.

---

## Primary Information

Today's Workout

Today's Meal

Today's Recovery

Today's Learning Opportunity

---

## Secondary Information

Alternatives

Why this recommendation?

Consequences of skipping

Quick adaptations

---

## User Questions Answered

- What should I do today?
- Why?
- What if I cannot?
- What happens if I skip it?

---

# Plan

## Purpose

Help users look ahead.

Planning should remain flexible.

Forge assists but never dictates.

---

## Contains

Weekly Plan

Meal Plan

Workout Schedule

Grocery List

Upcoming Objectives

Planning Preferences

---

## User Questions Answered

- What does this week look like?
- Can I change it?
- What should I shop for?

---

# Library

## Purpose

The Library is Forge's catalogue.

It provides access to knowledge rather than recommendations.

---

## Contains

Recipes
├── Forge Recipes

├── My Recipes

└── Import Recipe

Meals

Exercises

Workouts
├── Forge Workouts

├── My Workouts

└── Import Workout

Recovery Routines

Lessons

Knowledge Topics

Search

---

## User Questions Answered

- What options exist?
- What would I like to learn?
- Can I explore?

---

# Progress

## Purpose

Show meaningful progress.

Progress exists to encourage reflection rather than comparison.

---

## Contains

Goals

Objectives

Achievements

Consistency

Experiences

Patterns

Milestones

---

## Does Not Contain

Leaderboards

Social comparison

Vanity metrics

Forge measures progress against the user's previous self.

---

# Profile

## Purpose

Represents the user.

Contains information Forge uses to personalise decisions.

---

## Contains

Goals

Preferences

Budget

Equipment

Lifestyle

Health Information

Cooking Ability

Workout Level

Notification Preferences

Privacy

---

# Progressive Disclosure

Forge should reveal information in layers.

---

## Layer 1

Simple recommendation.

Example:

```
Today's Workout

Pull Session
```

---

## Layer 2

Reasoning.

```
Why today?

Yesterday focused on pushing muscles, allowing today's pull session to maximise recovery.
```

---

## Layer 3

Alternatives.

```
Short on time?

20-minute version

Mobility alternative

Reschedule
```

---

## Layer 4

Education.

```
Would you like to understand recovery?
```

Learning should always remain optional.

---

# Information Hierarchy

Every recommendation follows the same structure.

```
Recommendation

↓

Reason

↓

Alternatives

↓

Consequences

↓

Learn More
```

This creates a consistent user experience throughout Forge.

---

# Search Philosophy

Search should be universally accessible.

Users should be able to search:

- Recipes
- Exercises
- Workouts
- Ingredients
- Knowledge
- Recovery

Search should prioritise understanding rather than keywords.

---

# Ask Forge

Ask Forge is available from every primary destination.

It represents the conversational interface to the Decision Engine.

Examples include:

- Suggest another meal.
- Why was this recommended?
- I only have twenty minutes.
- My knee hurts today.
- I have chicken and rice.

Ask Forge should always understand context.

---

# Information Ownership

Every screen has one primary responsibility.

---

## Today

Decision support.

---

## Plan

Future planning.

---

## Library

Discovery.

---

## Progress

Reflection.

---

## Profile

Personalisation.

No screen should attempt to perform multiple primary responsibilities.

---

# Home Screen Philosophy

The Home screen is not a dashboard.

It is today's guidance.

The user should immediately understand:

- what to do,
- why,
- what alternatives exist,
- and how to learn more.

Everything else is secondary.

---

# Notifications

Notifications should be rare.

Every notification should answer one question:

> Does this help the user make a better decision right now?

If not, Forge should remain silent.

---

# User Experience Principles

The experience should always feel:

- Calm
- Clear
- Helpful
- Respectful
- Intelligent
- Adaptable

Forge should quietly support the user rather than compete for their attention.

---

# Future Considerations

The Information Architecture has been designed to support future capabilities including:

- Calendar integration
- Grocery delivery
- Wearable devices
- Community features
- Family planning
- Voice interaction
- Desktop experience

Future functionality should strengthen the existing information hierarchy rather than replace it.

---

# Guiding Statement

> Forge presents the right information, to the right person, at the right time, in order to help them make the next good decision.
