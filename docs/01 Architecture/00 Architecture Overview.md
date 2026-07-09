# Forge Architecture Overview

**Version:** 0.1  
**Status:** Draft  
**Owner:** Grant Groenewald  
**Contributors:** Grant Groenewald, ChatGPT  
**Last Updated:** 9 July 2026

---

# Purpose

The Architecture Overview provides a high-level description of how Forge is organised.

It introduces the major architectural layers, explains how they interact, and establishes the guiding principles that shape every technical decision.

This document should be read before any detailed architecture documentation.

---

# Architectural Philosophy

Forge is designed around one central idea:

> **Understand the user well enough to recommend the right next decision.**

Everything within Forge exists to support this objective.

Rather than being organised around features, Forge is organised around domains of understanding.

---

# Core Architectural Layers

Forge consists of four conceptual layers.

```
┌───────────────────────────────────────┐
│          User Experience              │
├───────────────────────────────────────┤
│     Recommendation & Intelligence     │
├───────────────────────────────────────┤
│        Core Business Domains          │
├───────────────────────────────────────┤
│     Data & Infrastructure Services    │
└───────────────────────────────────────┘
```

Each layer has a distinct responsibility.

---

# Layer Responsibilities

## 1. User Experience

Responsible for every interaction between the user and Forge.

Examples:

- Screens
- Navigation
- Notifications
- Visual Design
- User Flows

This layer should never contain business logic.

---

## 2. Recommendation & Intelligence

Represents the "brain" of Forge.

Responsible for:

- Recommendations
- Pattern Recognition
- Adaptation
- Context Awareness
- Reasoning
- Learning

This layer transforms information into guidance.

---

## 3. Core Business Domains

Represents Forge's understanding of healthy living.

Primary domains include:

- Lifestyle
- Nutrition
- Fitness
- Health
- Learning

Each domain owns its concepts and business rules.

---

## 4. Data & Infrastructure

Provides the technical foundation.

Examples include:

- Local storage
- Cloud synchronisation
- Authentication
- External APIs
- AI providers
- Analytics

Infrastructure supports the application but should never define its behaviour.

---

# Architectural Flow

Information generally flows in one direction.

```
User

↓

User Experience

↓

Recommendation & Intelligence

↓

Business Domains

↓

Infrastructure

↓

Business Domains

↓

Recommendation & Intelligence

↓

User Experience

↓

User
```

The recommendation layer acts as the bridge between the user's needs and Forge's knowledge.

---

# Separation of Responsibilities

Forge intentionally separates:

- Presentation
- Intelligence
- Business Logic
- Infrastructure

Each layer should have a single responsibility.

Changes within one layer should have minimal impact on the others.

---

# Architectural Principles

All architectural decisions should follow these principles.

## User-Centred

Every component should ultimately improve the user's experience.

---

## Explainable

Every recommendation should be explainable.

---

## Adaptable

The architecture should support changing user needs without requiring major redesign.

---

## Modular

Domains should remain loosely coupled and independently maintainable.

---

## Offline-First

Forge should continue providing meaningful functionality without an internet connection whenever practical.

---

## Intelligence as a Service

Recommendation logic should remain independent of any particular AI model or provider.

The recommendation engine should be replaceable without affecting the rest of the system.

---

# Future Growth

The architecture is intentionally designed to support future capabilities including:

- Wearable device integration
- Grocery providers
- Calendar integration
- AI model improvements
- Community features
- Professional healthcare integrations

These capabilities should extend the existing architecture rather than require structural redesign.

---

# Guiding Statement

> Forge is organised so that understanding, rather than technology, sits at the centre of the product.

Every architectural decision should reinforce this principle.
