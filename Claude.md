# Forge Development Guidelines

## Philosophy

Forge is a mobile-first, offline-first health companion.

Do not optimise for novelty.

Optimise for simplicity, maintainability and readability.

## Architecture

- Modular Monolith
- Clean Architecture
- Domain Layer independent of infrastructure
- AI never makes decisions
- Decision Engine contains deterministic business logic

## Coding Standards

- Follow existing architecture.
- Prefer composition over inheritance.
- Keep classes focused.
- Write readable code.
- Avoid unnecessary dependencies.

## Behaviour

If unsure:

Prefer asking for clarification over making architectural decisions.

Do not introduce new frameworks without justification.

Do not violate architectural boundaries.
