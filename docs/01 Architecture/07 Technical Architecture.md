# Forge Technical Architecture

**Version:** 0.2  
**Status:** Draft  
**Owner:** Grant Groenewald  
**Contributors:** Grant Groenewald, ChatGPT  
**Last Updated:** 13 July 2026

---

# Purpose

The Technical Architecture defines the engineering principles that support Forge.

Its purpose is to establish a stable technical foundation that enables Forge to evolve over many years without compromising its philosophy, maintainability or adaptability.

This document intentionally focuses on architectural principles rather than specific implementation technologies.

Technology choices may evolve.

Forge's architecture should not.

---

# Scope

This document defines:

- Platform strategy
- System architecture
- Engineering philosophy
- AI integration philosophy
- Authentication principles
- Synchronisation strategy
- Offline behaviour
- Architectural boundaries

It does not define software structure or coding standards.

---

# Audience

This document is intended for:

- Software Engineers
- Solution Architects
- AI Engineers
- DevOps Engineers
- Technical Leads

---

# Dependencies

This document should be read after:

- Architecture Overview
- Domain Model & Conceptual Architecture
- Domain Relationships & Ownership
- Decision Engine
- Information Architecture & User Experience
- User Journey & Interaction Flows

---

# Technical Philosophy

Technology exists to support Forge.

Technology should never define Forge.

Forge is designed as a long-term craft product rather than an enterprise platform.

Engineering decisions should prioritise:

- Simplicity
- Maintainability
- Clarity
- Replaceability
- Adaptability
- Long-term sustainability

Complexity should only be introduced when there is clear evidence that it solves a real problem.

---

# Platform Strategy

Forge is a mobile-first product.

The primary experience is delivered through mobile devices.

Future platforms may include:

- Desktop
- Web
- Wearables
- Voice interfaces

Future platforms should extend the existing experience rather than redefine it.

The architecture should allow new client applications without requiring changes to the core reasoning systems.

---

# System Architecture

Forge is built around a modular monolith.

Business capabilities remain clearly separated into independent modules while being deployed as a single application during the early stages of the product.

This approach provides:

- Faster development
- Lower operational complexity
- Easier debugging
- Simpler deployments
- Clear module boundaries

Forge may evolve towards distributed services in the future only if measurable business requirements justify the additional complexity.

---

# Decision Engine Philosophy

The Decision Engine is the heart of Forge.

It represents the primary intellectual property of the product.

The Decision Engine is responsible only for reasoning.

It does not:

- Manage databases
- Call external APIs
- Communicate directly with AI providers
- Update user information
- Render user interfaces

Its sole responsibility is to produce structured decisions from available knowledge.

---

# Artificial Intelligence

Artificial Intelligence enhances Forge.

Artificial Intelligence is not Forge.

AI should primarily assist with:

- Natural conversation
- Education
- Explanations
- Content generation
- Planning assistance

The Decision Engine remains responsible for reasoning.

Generative AI should communicate decisions rather than create them.

This separation improves:

- Safety
- Consistency
- Explainability
- Replaceability

AI providers should remain interchangeable through well-defined interfaces.

---

# Knowledge Architecture

Forge reasons using three independent knowledge sources.

Evidence

Scientific knowledge, educational material, rehabilitation principles and nutritional guidance.

Personal Understanding

Information learned about the individual over time.

Current Context

Information describing today's circumstances.

These three knowledge sources combine to create understanding.

The Decision Engine reasons from understanding.

Learning occurs independently after decisions have been made.

---

# Offline Behaviour

Forge should degrade gracefully.

Available offline:

- Previously synchronised workouts
- Previously synchronised meals
- Existing plans
- Progress history
- User preferences
- Educational content already stored locally

Requires connectivity:

- AI conversations
- Cloud synchronisation
- Discovering new content
- Community features
- External integrations

Users should never lose access to essential functionality due to temporary connectivity issues.

---

# Cloud Synchronisation

Cloud services enhance Forge rather than define it.

The cloud provides:

- Secure backup
- Device synchronisation
- AI capabilities
- Account management
- Future collaborative features

Synchronisation should occur automatically where practical while respecting user privacy and device resources.

---

# Authentication

Forge supports authenticated users as its primary experience.

Authentication enables:

- Personal understanding
- Progress history
- Cloud synchronisation
- Multi-device continuity
- Personalised recommendations

A limited guest experience may be provided for exploration, but Forge's full value is realised through an authenticated user profile.

---

# Architectural Independence

The core business logic must remain independent of implementation technologies.

The Decision Engine communicates only with abstract interfaces.

It should never depend directly upon:

- Databases
- Cloud providers
- AI providers
- Authentication services
- Third-party APIs

This enables technologies to evolve without affecting the product's reasoning capabilities.

---

# Deterministic Reasoning

Forge's recommendations should be deterministic.

Given the same:

- Evidence
- Personal Understanding
- Current Context

Forge should always produce the same decision.

This principle supports:

- Explainability
- Testing
- Predictability
- User trust

Creativity belongs within conversation and education.

Reasoning remains deterministic.

---

# Scalability

Forge is designed to scale gradually.

The architecture should support:

- Individual users
- Families
- Coaches
- Healthcare professionals
- Community features

Scaling should occur through modular evolution rather than premature architectural complexity.

Operational simplicity should always be preferred unless evidence demonstrates a need for additional sophistication.

---

# Security

Forge should protect user information through:

- Secure authentication
- Encrypted communication
- Secure data storage
- Least-privilege access
- Secure backups

Users remain the owners of their personal information.

Forge should request only the information necessary to provide meaningful recommendations.

---

# Future Considerations

The architecture should support future capabilities including:

- Local AI reasoning
- Additional knowledge providers
- Wearable integration
- Healthcare integrations
- Household planning
- Grocery services
- Coach dashboards
- Desktop applications

Future enhancements should extend Forge's existing architecture rather than replace it.

---

# Guiding Statement

> Technology exists to support understanding.

> Understanding enables better decisions.

> Better decisions improve lives.

Forge's architecture should remain simple, adaptable and trustworthy for decades to come.
