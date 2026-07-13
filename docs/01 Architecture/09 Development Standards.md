# Forge Development Standards

**Version:** 0.1  
**Status:** Draft  
**Owner:** Grant Groenewald  
**Contributors:** Grant Groenewald, ChatGPT  
**Last Updated:** 13 July 2026

---

# Purpose

The Development Standards define how software is developed within Forge.

Their purpose is to ensure consistency, maintainability, readability and long-term engineering quality.

Every engineer contributing to Forge should understand and follow these standards.

---

# Scope

This document defines:

- Engineering principles
- Coding standards
- Repository standards
- Documentation requirements
- Testing philosophy
- Version control
- Code review expectations
- Release philosophy

It does not define product behaviour or software architecture.

---

# Audience

This document is intended for:

- Software Engineers
- AI Engineers
- Technical Leads
- Contributors

---

# Dependencies

This document should be read after:

- Technical Architecture
- Software Architecture

---

# Development Philosophy

Forge is built for decades rather than months.

Every line of code should contribute to:

- Simplicity
- Readability
- Reliability
- Maintainability
- Trust

The objective is not clever software.

The objective is understandable software.

---

# Engineering Principles

Every engineering decision should satisfy the following principles.

## Simplicity

Prefer the simplest solution that correctly solves the problem.

---

## Readability

Code is read more often than it is written.

Optimise for understanding.

---

## Single Responsibility

Every class, function and module should have one clear responsibility.

---

## Explicitness

Prefer explicit behaviour over implicit behaviour.

Avoid hidden side effects.

---

## Replaceability

Infrastructure should be replaceable.

Business logic should remain independent.

---

## Testability

Every important behaviour should be testable.

---

## Consistency

Follow established patterns.

Avoid introducing multiple ways of solving the same problem.

---

# Coding Standards

## Naming

Names should clearly communicate intent.

Avoid abbreviations unless universally understood.

Good names are preferred over short names.

---

## Functions

Functions should:

- perform one task
- have descriptive names
- avoid unnecessary complexity
- remain reasonably short

---

## Classes

Classes should model meaningful concepts.

Large "God Objects" are prohibited.

---

## Comments

Code should explain **what**.

Comments should explain **why**.

Do not comment obvious code.

---

## Magic Values

Avoid hard-coded values.

Meaningful constants should be used.

---

## Error Handling

Errors should be:

- informative
- recoverable where possible
- logged appropriately

Never silently ignore failures.

---

# Repository Structure

The repository should reflect the Software Architecture.

Modules should remain clearly separated.

Infrastructure should never leak into business logic.

New modules should only be created when they represent a genuinely new responsibility.

---

# Documentation Standards

Every major component should include documentation describing:

- purpose
- responsibilities
- dependencies
- assumptions

Architecture decisions should be documented before implementation.

---

# Version Control

Git is the source of truth.

Development should occur through feature branches.

Main should remain stable.

Every commit should represent a meaningful unit of work.

---

# Commit Messages

Commit messages should describe intent.

Examples:

```
Add meal planning service

Improve recommendation reasoning

Refactor workout repository

Fix recovery scheduling
```

Avoid messages such as:

```
Updates

Changes

Fix

Misc
```

---

# Pull Requests

Every Pull Request should explain:

- What changed
- Why it changed
- Architectural impact
- Testing completed

Large Pull Requests should be avoided.

Smaller reviews improve quality.

---

# Testing Philosophy

Forge tests behaviour rather than implementation.

Testing exists to protect user trust.

---

## Unit Tests

Verify individual components.

---

## Integration Tests

Verify communication between modules.

---

## Decision Validation Tests

Verify deterministic decision making.

Example:

```
Given:

Evidence
Personal Understanding
Current Context

Expect:

Specific Recommendation
Specific Alternatives
Specific Safety Notes
```

---

## Behaviour Verification

Every release should verify that Forge still behaves according to its Constitution.

Behaviour Verification includes:

- Calm communication
- Educational guidance
- User autonomy
- Safety
- Consistency
- Adaptability

---

## User Journey Tests

Critical journeys should be tested end-to-end.

Examples:

- First launch
- Completing a workout
- Meal planning
- Injury adaptation
- Weekly planning

---

# Artificial Intelligence Standards

AI should only perform responsibilities assigned to it.

AI should never bypass the Decision Engine.

AI-generated outputs should remain explainable.

Provider-specific behaviour should remain isolated behind interfaces.

---

# Security Standards

Security should be considered from the beginning.

Sensitive information should never be:

- logged
- exposed
- hard-coded
- committed to source control

Authentication and authorisation should follow least-privilege principles.

---

# Performance Standards

Performance should be measured.

Optimisation should be evidence-driven.

Premature optimisation should be avoided.

---

# Refactoring

Continuous improvement is encouraged.

Refactoring should improve:

- clarity
- maintainability
- simplicity

Refactoring should never alter behaviour without corresponding tests.

---

# Technical Debt

Technical debt should be:

- visible
- documented
- prioritised

Intentional debt is acceptable.

Hidden debt is not.

---

# Dependencies

New dependencies should only be introduced after evaluating:

- maintenance
- security
- community support
- licensing
- long-term viability

Prefer fewer dependencies.

---

# Releases

Every release should satisfy:

- Automated testing passes
- Behaviour Verification passes
- No known critical issues
- Documentation updated where required

Quality takes priority over release frequency.

---

# Code Reviews

Code reviews exist to improve the product.

They should focus on:

- correctness
- readability
- architecture
- maintainability

Reviews should never become personal.

The objective is shared learning.

---

# Continuous Improvement

Forge should continually improve.

Processes should evolve when evidence demonstrates a better approach.

Standards should remain stable while allowing thoughtful refinement.

---

# Definition of Done

A feature is considered complete when:

- Behaviour is correct.
- Tests pass.
- Documentation is updated.
- Architecture remains respected.
- Code has been reviewed.
- The feature aligns with Forge's Constitution.

Completion is measured by quality rather than speed.

---

# Guiding Statement

> Every line of code should make Forge easier to understand, easier to maintain and better able to improve people's lives.

Engineering excellence is achieved not through complexity, but through clarity, discipline and thoughtful craftsmanship.
