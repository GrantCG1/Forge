# ADR-013 — Frontend Technology Selection

**Status:** Accepted
**Date:** 18 July 2026
**Owner:** Grant Groenewald

---

## Context

Forge is a mobile-first product (ADR-009) that must run natively on both Android and iOS from a single codebase, while remaining simple to build and maintain (ADR-008) for the long term (Technical Architecture, Engineering Governance).

The Presentation layer (Software Architecture) must contain no business logic, so the frontend technology choice should not constrain the Application, Decision, Knowledge or Infrastructure layers. Engineering Governance Level 1 already names Flutter as the reference example for this decision, reflecting prior direction agreed with the product owner.

Local development also benefits from a web build target for fast iteration on UI without a device or emulator, without treating web as a shipped platform.

---

## Problem Statement

Which frontend technology should Forge's mobile client be built with, given the requirements for mobile-first delivery, long-term maintainability, single-codebase efficiency, and compatibility with a modular monolith backend?

---

## Decision

Forge's frontend will be built using **Flutter** (Dart).

The application targets **Android and iOS** as shipped platforms. A **web** build target is retained for local development convenience only (fast iteration, no emulator required) and is not a supported production platform at this stage.

---

## Alternatives Considered

### React Native
Rejected as primary choice. Mature ecosystem, but introduces a JavaScript/TypeScript toolchain alongside a .NET backend, increasing the number of languages contributors must know, and its native-bridge architecture historically introduces more platform-specific friction than Flutter's own rendering engine.

### Native (Swift + Kotlin, separate codebases)
Rejected. Would require maintaining two independent codebases and duplicating UI and presentation logic, directly conflicting with the simplicity principle (ADR-008) and long-term maintainability goals.

### .NET MAUI
Considered for consistency with the ASP.NET Core backend language. Rejected for now due to a less mature ecosystem and tooling compared to Flutter for mobile-first, design-heavy consumer apps.

---

## Consequences

- A single Dart codebase serves Android and iOS, reducing duplication and long-term maintenance cost.
- The team standardises on Dart/Flutter tooling (hot reload, widget testing) for all client development.
- The web build target exists only to speed up local UI development; it must not be relied upon for production behaviour (e.g. platform channels, plugins) without a deliberate future decision to support it as a shipped platform.
- Presentation-layer code (per Software Architecture) remains isolated from Application/Decision/Knowledge/Infrastructure layers, so this decision has no bearing on backend technology or business logic.

---

## Trade-offs

- Dart has a smaller ecosystem and hiring pool than JavaScript or native mobile stacks.
- Flutter's plugin ecosystem, while broad, occasionally lags behind platform-specific SDK updates.
- Two primary languages now exist across the stack (Dart for frontend, C# for backend); this is accepted because Presentation and Infrastructure/Application concerns are cleanly separated and communicate only through a well-defined API contract.

---

## Risks

- Flutter's long-term trajectory depends on continued investment from Google. Mitigated by keeping all business logic (Decision Engine, Application services) outside the Presentation layer, so the framework could be replaced without affecting Forge's core intellectual property.
- Treating web as a "development-only" target risks accidental scope creep into a shipped platform. Mitigated by keeping web out of release/build pipelines until a future ADR explicitly accepts it as shipped.

---

## Future Review Criteria

This decision should be revisited if:

- Flutter fails to meet performance or platform-capability requirements for a required feature.
- Desktop or web are prioritised as shipped platforms (see Project Roadmap "Future Considerations"), requiring a dedicated ADR to accept web/desktop as production targets.
- Evidence emerges that a different technology would measurably reduce long-term maintenance cost.

---

## Decision Status

**Accepted.**
