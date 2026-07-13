# Forge Software Architecture

**Version:** 0.1  
**Status:** Draft  
**Owner:** Grant Groenewald  
**Contributors:** Grant Groenewald, ChatGPT  
**Last Updated:** 13 July 2026

---

# Purpose

The Software Architecture defines how Forge is organised internally.

Unlike the Technical Architecture, which defines engineering principles, this document defines the structure of the software itself.

Its purpose is to ensure that every component has a clear responsibility, every dependency has a clear direction, and every engineer understands where new functionality belongs.

---

# Scope

This document defines:

- Software organisation
- Architectural layers
- Responsibilities
- Module boundaries
- Dependency rules
- Information flow
- Decision flow
- Learning flow

It does not define implementation technologies or coding conventions.

---

# Audience

This document is intended for:

- Software Engineers
- AI Engineers
- Technical Leads
- Architects

---

# Dependencies

This document should be read after:

- Technical Architecture
- Decision Engine
- Information Architecture
- User Journey & Interaction Flows

---

# Architectural Philosophy

Forge is not organised around user interface screens.

Forge is organised around understanding.

Every software component exists to support one of five responsibilities.

```

Knowledge

↓

Decision

↓

Conversation

↓

Experience

↓

Learning

```

These responsibilities form Forge's Cognitive Architecture.

---

# Cognitive Architecture

## 1. Knowledge

Purpose

Represent everything Forge knows.

Knowledge is divided into three independent sources.

- Evidence
- Personal Understanding
- Current Context

Knowledge is read-only.

It does not make decisions.

---

## 2. Decision

Purpose

Reason from knowledge.

The Decision Engine is entirely deterministic.

Given identical knowledge, the Decision Engine must always produce the same structured decision.

The Decision Engine never:

- updates databases
- calls AI providers
- renders UI
- performs networking

Its responsibility is reasoning.

---

## 3. Conversation

Purpose

Explain decisions.

Conversation converts structured decisions into natural language.

Conversation may use AI.

Conversation never changes decisions.

---

## 4. Experience

Purpose

Present Forge to the user.

Responsibilities include:

- Screens
- Navigation
- User interaction
- Visual design
- Accessibility

The Experience Layer never contains business logic.

---

## 5. Learning

Purpose

Improve Personal Understanding.

Learning observes:

- completed workouts
- completed meals
- skipped activities
- user feedback
- behavioural patterns

Learning never changes knowledge immediately.

Instead it accumulates observations before updating Personal Understanding.

This prevents Forge from overreacting to isolated events.

---

# Architectural Layers

```

Presentation

↓

Application

↓

Decision

↓

Knowledge

↓

Infrastructure

```

Each layer has one responsibility.

Dependencies always point downwards.

---

# Layer Responsibilities

## Presentation

Contains:

- Screens
- Widgets
- Navigation
- Themes

No business logic.

---

## Application

Coordinates use cases.

Examples:

- Complete workout
- Generate grocery list
- Create weekly plan
- Start rehabilitation session

Application services orchestrate components but never perform reasoning.

---

## Decision

Contains:

- Decision Engine
- Recommendation logic
- Decision validation

The Decision Layer is Forge's core.

---

## Knowledge

Contains:

Evidence

Personal Understanding

Current Context

Knowledge Providers

Knowledge Models

Knowledge remains independent of storage.

---

## Infrastructure

Contains:

- Local storage
- Cloud storage
- AI providers
- APIs
- Authentication
- Notifications

Infrastructure is replaceable.

---

# Dependency Rules

Every dependency follows one direction.

```

Experience

↓

Application

↓

Decision

↓

Knowledge

↓

Interfaces

↓

Infrastructure

```

No layer may bypass another.

Examples:

Presentation cannot query databases.

Conversation cannot update user profiles.

Decision cannot call AI providers.

---

# Decision Flow

```

Knowledge

↓

Decision Engine

↓

Structured Decision

↓

Conversation

↓

User

```

Every recommendation follows this flow.

---

# Learning Flow

```

User Interaction

↓

Observation

↓

Learning Engine

↓

Updated Personal Understanding

↓

Future Decisions

```

Learning is intentionally slower than interaction.

Forge values stable understanding over reactive adaptation.

---

# Structured Decision

The Decision Engine returns a structured decision object.

Every decision contains:

- Recommendation
- Confidence
- Reasoning
- Evidence Used
- Personal Factors
- Context Factors
- Alternatives
- Educational Opportunities
- Safety Notes

Every recommendation within Forge should be explainable.

---

# Behaviour Verification

Forge validates behaviour rather than implementation.

Verification categories include:

## Safety

Avoid harmful recommendations.

---

## Consistency

Identical knowledge produces identical decisions.

---

## Constitution

Recommendations remain aligned with Forge's philosophy.

---

## Education

Forge explains recommendations appropriately.

---

## Autonomy

Users retain meaningful choice.

---

## Adaptability

Recommendations respond appropriately to context.

Behaviour Verification protects Forge's identity over time.

---

# Module Organisation

Forge is organised into independent modules.

Examples include:

- Decision
- Workouts
- Meals
- Recovery
- Learning
- Planning
- Progress
- User
- Knowledge
- Conversation

Modules communicate through interfaces.

Modules should not access one another's internal implementations.

---

# Interface Contracts

Every major capability exposes a well-defined interface.

Examples:

Decision Provider

Knowledge Provider

Learning Provider

Conversation Provider

Storage Provider

Notification Provider

Authentication Provider

Implementations may change.

Interfaces remain stable.

---

# State Management

State exists only where required.

Temporary interface state belongs to the Presentation Layer.

Business state belongs to the Application Layer.

Knowledge belongs to the Knowledge Layer.

Forge should minimise shared mutable state.

---

# Error Handling

Errors should propagate upwards with context.

Users should receive:

- clear explanations
- calm language
- helpful alternatives

Forge should never expose implementation details.

---

# Testing Strategy

Testing occurs at multiple levels.

Unit Tests

Individual components.

---

Decision Validation

Structured recommendation scenarios.

---

Behaviour Verification

Constitutional compliance.

---

Integration Tests

Communication between modules.

---

User Journey Tests

Complete end-to-end scenarios.

Testing should prioritise confidence in behaviour rather than implementation.

---

# Future Evolution

The architecture supports future additions including:

- Additional knowledge sources
- Multiple AI providers
- Healthcare integrations
- Community features
- Wearables
- Coach portals
- Desktop applications

Future features should extend existing modules rather than introduce new architectural concepts.

---

# Guiding Statement

> Forge is organised around understanding rather than technology.

> Every component should have one responsibility.

> Every decision should be explainable.

> Every dependency should preserve simplicity.

The software architecture should remain understandable, maintainable and trustworthy throughout the lifetime of Forge.
