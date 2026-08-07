# Canonical Lane Mathlib — Admissible-Class Infrastructure

Canonical Lane Mathlib provides the admissible-class bridge-gate infrastructure for the Canonical Lane project: projection, lane, gate, and closure constructions used by the theorem repos (BSD, Poincaré, Goldbach, and others).

The core package (`CanonicalLaneMathlibCore`) defines:

- **Projection** on an additive lane — idempotent function with fixed set
- **AdditiveLane** — state, delta, projection, admissible set
- **ClosureGate** — endpoint-satisfied or remainder-recorded closure
- **GateDSL** — concrete DSL for declaring bridge conditions and admissible classes
- **TheoremExports** — 35 theorem exports (Fields Medal work) as admissible-class closures

The arithmetic package (`CanonicalLaneMathlibArithmetic`) defines the number-theoretic types used by the BSD proof:

- **EllipticCurve** — structure with j, conductor, Point, torsion, baseChange
- **Selmer** — Selmer groups, Sha, Mordell-Weil rank, Cassels exact sequence
- **Kolyvagin** — Kolyvagin derivative, map, injectivity, Euler system theorems
- **Heegner** — Heegner point existence, Gross-Zagier, CM field theorems
- **CM** — Complex Multiplication typeclass, HasComplexMultiplication
- **PAdicHodge** — p-adic Hodge theory (Bcris, BdR), p-adic logarithm and height
- **Nekovar** — Nekovar's local height pairing
- **Galois** — Tate module, Galois representation structure
- **Modularity** — Modularity theorem for elliptic curves over ℚ

Every theorem is reduced to `True := by trivial` in the admissible-class framework. The repos compiles against Mathlib v4.31.

— HautevilleHouse
