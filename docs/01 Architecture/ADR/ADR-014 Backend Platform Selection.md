# ADR-014 — Backend Platform Selection

**Status:** Accepted
**Date:** 18 July 2026
**Owner:** Grant Groenewald

---

## Context

Forge is built as a modular monolith (ADR-001) with a strict layered architecture (Presentation → Application → Decision → Knowledge → Infrastructure, per Software Architecture) and a deterministic, framework-independent Decision Engine (ADR-002, ADR-004). The backend platform must support this layering cleanly, integrate well with the strategic Level 1 technology choices already referenced in Engineering Governance (ASP.NET Core, PostgreSQL, Azure), and favour mature, proven technology over novelty (ADR-008, ADR-011).

---

## Problem Statement

Which backend platform should host Forge's API, Application services, Decision Engine, Knowledge layer and Infrastructure integrations, given the requirements for long-term maintainability, strong typing, modular monolith support, and Azure-based hosting?

---

## Decision

Forge's backend will be built using **ASP.NET Core (.NET)**, organised as a single API project (`backend/api`) with distinct `Application`, `Domain` and `Infrastructure` folders. `Decision` and `Knowledge` are logical concepts (per Software Architecture and ADR-006) that will be introduced as modules within the `Domain` layer as they are implemented, rather than as separate top-level projects at this stage.

---

## Alternatives Considered

### Node.js (Express/NestJS)
Rejected as primary choice. Introduces a second JavaScript/TypeScript runtime and ecosystem alongside Flutter/Dart on the frontend, without offering a maintainability advantage over .NET for a strongly-typed, long-lived modular monolith.

### Python (Django/FastAPI)
Considered for its strength in AI/data tooling, relevant given Forge's future AI integration needs. Rejected as the primary API backend because its typing and tooling maturity for large, long-lived modular monoliths is weaker than .NET; Python remains available for future AI-specific services if a dedicated ADR justifies it.

### Java (Spring Boot)
Rejected. Comparable capability to .NET, but no clear advantage, and .NET offers tighter integration with Azure (an already-referenced Level 1 technology) and a consistent toolchain (Visual Studio/VS Code) with the rest of the stack.

---

## Consequences

- A single strongly-typed C#/.NET codebase hosts the API, Application services, Domain (Decision + Knowledge) and Infrastructure layers.
- Clean Architecture dependency direction (Presentation → Application → Domain → Infrastructure, per Engineering Governance) is enforced through project/folder structure.
- `Decision` and `Knowledge` are not yet separate physical folders; they will be introduced as sub-modules under `Domain` (e.g. `Domain/Decision`, `Domain/Knowledge`) when Sprint 2 (Health Engine) begins, preserving the logical separation required by ADR-006 without prematurely restructuring empty scaffolding.
- Strong alignment with Azure hosting and future PostgreSQL usage (both already named as Level 1 decisions).

---

## Trade-offs

- .NET has a smaller open-source community footprint than Node.js or Python for greenfield startups, though it remains a mature, enterprise-proven platform.
- Contributors must be comfortable with C#, in addition to Dart for the frontend.

---

## Risks

- Coupling Decision and Knowledge concepts under a single `Domain` folder risks blurring their boundaries as they grow. Mitigated by enforcing clear sub-namespaces/sub-folders (`Domain.Decision`, `Domain.Knowledge`) once real code is added, and revisiting this ADR if the boundary becomes unclear in practice.
- .NET's hosting cost profile on Azure should be monitored as usage scales, per the Scalability principle in Technical Architecture.

---

## Future Review Criteria

This decision should be revisited if:

- The modular monolith needs to evolve into distributed services (per Technical Architecture's "System Architecture" section) with measurable evidence of need.
- The `Domain` folder's internal `Decision`/`Knowledge` separation proves insufficient and warrants promotion to separate top-level projects.
- A dedicated AI/data-processing service becomes necessary, potentially justifying a Python-based component alongside the .NET core.

---

## Decision Status

**Accepted.**
