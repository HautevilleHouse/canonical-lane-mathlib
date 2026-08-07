# Canonical Lane Mathlib

Mathlib-backed Canonical Lane projection and carriage core for Lean 4 theorem packages.

This repository is also the **normative time capsule** for the public theorem-program surface:

- only manifold-constrained / admissible-class closure is in scope;
- unrestricted classical conjecture closure is out of scope and carried;
- a dated, falsifiable prediction about classical unrestricted formulations lives in
  [`NORMATIVE_EXPECTATION.md`](NORMATIVE_EXPECTATION.md) and
  [`registry/prediction_time_capsule.json`](registry/prediction_time_capsule.json).

## Start here

| Surface | Role |
| --- | --- |
| [`NORMATIVE_EXPECTATION.md`](NORMATIVE_EXPECTATION.md) | Doctrine + credit-seeking prediction (not a theorem) |
| [`registry/prediction_time_capsule.json`](registry/prediction_time_capsule.json) | Machine-readable package list, survivors, falsifiers |
| [`CanonicalLaneMathlibCore/Basic.lean`](CanonicalLaneMathlibCore/Basic.lean) | Shared projection / carriage / closure-gate spine |
| [`CanonicalLaneMathlibCore/NormativeExpectation.lean`](CanonicalLaneMathlibCore/NormativeExpectation.lean) | Lean-checked doctrine flags (scope booleans, not classical refutations) |
| [`ADMISSIBLE_CLASS_BRIDGE_GATE_METHOD.md`](ADMISSIBLE_CLASS_BRIDGE_GATE_METHOD.md) | Normative method specification (compact reference) |
| [commentary](https://github.com/HautevilleHouse/commentary) | Source-bound counterexamples and bounded proofs |
| [formal-record](https://github.com/HautevilleHouse/formal-record) | Machine-readable catalog of commentary outcomes |
| [p-vs-np-canonical-lane](https://github.com/HautevilleHouse/p-vs-np-canonical-lane) | Method lane: constrained pass, classical carried |

## Papers

| Paper | Description |
| --- | --- |
| [`ADMISSIBLE_CLASS_BRIDGE_GATE_METHOD.md`](ADMISSIBLE_CLASS_BRIDGE_GATE_METHOD.md) | Normative method spec — admissible class, bridge, gate, remainder (3 refs, compact, implementation-independent) |
| [`papers/ConstrainedEpistemologicalClosure_BridgeGateMethod.md`](papers/ConstrainedEpistemologicalClosure_BridgeGateMethod.md) | Full research paper — method + Lean 4 implementation + case studies (Poincaré, ABC, Goldbach) + related work comparison (15 refs) |
| [`papers/EpistemologicalClosure_FormalConjectures.md`](papers/EpistemologicalClosure_FormalConjectures.md) | Application paper — 185-repo closure scoreboard, bridge-gate certificates for AI-generated proofs, community challenge (14 refs) |

## Doctrine (short)

```text
IN SCOPE:     manifold-constrained / admissible-class closure
OUT OF SCOPE: unrestricted classical global theorem closure
FORBIDDEN:    promoting constrained success into classical closure
```

Motivating classical failure mode already on the commentary shelf:
[dimension-3 Jacobian counterexample](https://github.com/HautevilleHouse/commentary/tree/main/openconjectures/jacobian-c3-counterexample)
(\(n=2\) remains open/carried).

Survivor / differently tracked deep packages:
[Poincaré](https://github.com/HautevilleHouse/poincare-conjecture-canonical-lane-mathlib),
[BSD](https://github.com/HautevilleHouse/birch-swinnerton-dyer-canonical-lane-mathlib).

## Clean-clone replay

```bash
git clone https://github.com/HautevilleHouse/canonical-lane-mathlib.git
cd canonical-lane-mathlib
lake exe cache get
lake build
```

Pinned Lean toolchain: see `lean-toolchain`.  
Pinned Mathlib revision: see `lakefile.lean` and `lake-manifest.json`.

## Claim boundary

This repository is the shared formalization core and the normative expectation surface.
Dependent theorem packages pin an exact commit of this repository.
They must not enlarge classical mathematical claims beyond their paired lane packages and carried remainders.
Package-level manifold-constrained pass flags are **not** unique to BSD and Poincaré; classical unrestricted closure remains unclaimed across the Mathlib layer.

## Citation

See `CITATION.cff`.
