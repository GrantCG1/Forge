# Forge Decision Engine

**Version:** 0.1  
**Status:** Draft  
**Owner:** Grant Groenewald  
**Contributors:** Grant Groenewald, ChatGPT  
**Last Updated:** 9 July 2026

---

# Purpose

The Forge Decision Engine defines how Forge transforms understanding into meaningful guidance.

Rather than simply generating recommendations, the Decision Engine combines evidence, personal understanding and current context to determine the most appropriate decision for the user.

This document describes the philosophy, architecture and decision process that powers every recommendation within Forge.

---

# Scope

This document defines:

- Decision philosophy
- Decision inputs
- Decision process
- Recommendation generation
- Decision outputs
- Continuous learning
- Guiding principles

It does not define implementation details or artificial intelligence technologies.

---

# Audience

This document is intended for:

- Software Engineers
- AI Engineers
- Product Designers
- Solution Architects
- Product Managers

---

# Dependencies

This document should be read after:

- Product Charter
- UX Philosophy
- Intelligence Philosophy
- Domain Model & Conceptual Architecture
- Domain Relationships & Ownership

---

# Decision Philosophy

Forge does not attempt to determine the objectively best decision.

Instead, Forge seeks to identify the most appropriate decision for a specific individual, at a specific moment, based on everything it understands about them.

A recommendation should always feel personal, understandable and achievable.

Forge supports decision making rather than replacing it.

---

# The Three Pillars

Every decision is built from three sources of understanding.

```
Evidence

        +

Personal Understanding

        +

Current Context

        =

Understanding
```

Everything the Decision Engine does is derived from these three pillars.

---

## 1. Evidence

Evidence represents knowledge that is generally true.

Examples include:

- Nutrition science
- Exercise science
- Rehabilitation principles
- Medical guidance (within Forge's scope)
- Cooking knowledge
- Product knowledge
- Educational content
- Proven best practices

Evidence evolves as scientific understanding improves.

Evidence applies to everyone.

---

## 2. Personal Understanding

Personal Understanding represents what Forge knows about this individual.

Examples include:

- Lifestyle
- Goals
- Objectives
- Preferences
- Budget
- Schedule
- Equipment
- Cooking ability
- Workout experience
- Injuries
- Favourite meals
- Favourite workouts
- Previous experiences
- Motivation patterns
- Behavioural patterns
- User feedback

This understanding grows gradually through interaction.

It should always remain transparent and explainable.

---

## 3. Current Context

Current Context represents what is true today.

Examples include:

- Available time
- Available ingredients
- Energy level
- Motivation
- Weather
- Recovery status
- Current workload
- Calendar commitments
- Current programme stage

Context changes frequently and should always influence recommendations.

---

# Understanding

The Decision Engine combines the three pillars to build an understanding of the user's current situation.

Understanding answers one question:

> **"What is true for this person, right now?"**

Understanding precedes every decision.

Forge should never recommend before it understands.

---

# Decision Process

The Decision Engine follows a five-stage process.

```
Understand

↓

Reason

↓

Decide

↓

Explain

↓

Learn
```

Each stage has a distinct responsibility.

---

# Stage 1 — Understand

Forge combines:

- Evidence
- Personal Understanding
- Current Context

into a complete understanding of the user's present circumstances.

No recommendation is generated during this stage.

The objective is understanding rather than action.

---

# Stage 2 — Reason

Forge generates multiple candidate decisions.

Examples may include:

Workout options

- Push
- Pull
- Mobility
- Recovery
- Walk

Meal options

- Chicken Orzo
- Burrito Bowl
- Salmon Bowl

Learning options

- Recovery lesson
- Protein guide
- Budget cooking tip

Each candidate is evaluated using a consistent framework.

---

# Decision Criteria

Every candidate should be evaluated against the following questions.

## Evidence

Is this supported by current evidence?

---

## Suitability

Does it suit this individual?

---

## Context

Does it fit today's circumstances?

---

## Sustainability

Is it realistic and maintainable?

---

## Safety

Is it appropriate considering injuries and health constraints?

---

## Educational Value

Does it provide an opportunity to improve understanding?

---

## Lifestyle Alignment

Does it support balanced living rather than optimisation alone?

---

# Stage 3 — Decide

Forge selects the decision that best balances all evaluation criteria.

The selected decision should not necessarily be the most optimal.

Instead, it should be the decision most likely to improve the user's life today.

---

# Stage 4 — Explain

Every recommendation must include an explanation.

Explanations should answer four questions.

## What?

What is being recommended?

---

## Why?

Why was this recommendation selected?

---

## Alternatives

What reasonable alternatives exist?

---

## Learn More

Would the user like a deeper explanation?

Education should remain optional.

---

# Stage 5 — Learn

Every completed recommendation becomes an opportunity to improve Personal Understanding.

Forge should learn from:

- User feedback
- Completion
- User modifications
- Experience
- Behaviour
- Timing
- Preferences
- Outcomes

Learning should increase confidence gradually.

One interaction should never significantly alter Forge's understanding.

---

# Continuous Learning Loop

```
Recommendation

↓

Experience

↓

Reflection

↓

Learning

↓

Updated Personal Understanding

↓

Better Future Decisions
```

Forge improves continuously through experience.

---

# Decision Outputs

The Decision Engine may produce multiple outputs.

Primary outputs include:

- Workout Recommendation
- Meal Recommendation
- Recovery Recommendation
- Learning Recommendation

Secondary outputs include:

- Grocery Lists
- Meal Plans
- Weekly Planning
- Observations
- Adaptations

Recommendations are only one expression of the Decision Engine.

---

# Confidence

Every decision carries a confidence level.

Confidence should increase as Forge gathers evidence about the user.

Forge should communicate uncertainty honestly.

Examples include:

> "Based on what I've seen..."

> "It seems that..."

> "I may be wrong, but..."

Forge should never imply certainty where uncertainty exists.

---

# Transparency

Recommendations should always be explainable.

Users should understand:

- why something was recommended
- why alternatives were not selected
- which information influenced the decision
- how they can influence future recommendations

Transparency builds trust.

---

# Adaptation

Forge should adapt recommendations over time.

Adaptation should occur because:

- the user changes,
- circumstances change,
- understanding improves.

Adaptation should never appear unpredictable.

Users should always understand why recommendations evolve.

---

# Architectural Principles

The Decision Engine follows these principles.

## Understand before deciding.

Forge should never recommend without first understanding the user's situation.

---

## Explain every recommendation.

Every decision should have understandable reasoning.

---

## Respect autonomy.

Recommendations support decisions.

Users remain in control.

---

## Balance over optimisation.

Forge seeks sustainable healthy living rather than perfect metrics.

---

## Learn continuously.

Every interaction should improve future understanding.

---

## Preserve trust.

Trust is more valuable than perfect recommendations.

---

# Future Considerations

The Decision Engine has been designed to support future capabilities including:

- Wearable device integration
- Smart kitchen integration
- Shopping services
- Calendar integration
- Professional coaching
- Family planning
- AI-assisted reasoning
- Advanced rehabilitation pathways

Future capabilities should strengthen the existing decision process rather than replace it.

---

# Guiding Statement

> **Forge combines evidence, personal understanding and current context to recommend the most appropriate decision for this individual, at this moment, while helping them understand why.**
