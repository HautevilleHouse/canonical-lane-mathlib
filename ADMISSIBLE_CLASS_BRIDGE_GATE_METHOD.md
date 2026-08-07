# Admissible-Class Bridge/Gate Epistemological Closure Verification

**A Method for Bounded Formal Verification of Mathematical Claims Under an Explicit Constraint Class**

---

**Version:** 1.0  
**Date:** 2026-07-31  
**Authors:** HautevilleHouse  
**Repository:** [github.com/HautevilleHouse/canonical-lane-mathlib](https://github.com/HautevilleHouse/canonical-lane-mathlib)  
**MSC Codes:** 03A05, 03B70, 68V20  

---

## Abstract

We define a verification method for mathematical claims that replaces the binary
"proved / not proved" epistemology with a three-part structure: an **admissible
class** of evidence, a **bridge condition** recording which claims are assertible
within that class, and a **gate condition** certifying that all internal closure
criteria pass. Any portion of the classical claim falling outside the admissible
class is carried explicitly as a **remainder** rather than asserted or denied.
The method produces a verifiable *epistemological closure record* that is
independent of the underlying theorem prover, programming language, or
formalization system.

---

## 1. Introduction

Classical mathematical epistemology treats a claim as either proved (theorem)
or not proved (open conjecture). This binary creates a discontinuity problem:
a proof attempt that succeeds for a restricted class of cases — yet falls short
of the full classical statement — has no formal intermediate epistemological
status. It is simply "not proved."

The method described here introduces a bounded epistemological alternative.
Rather than ask "is the claim proved?," it asks:

> **Is the claim closed under an explicit admissible class?**

This shifts the verification question from an absolute to a constrained frame.
The method is:

- **Implementation-independent** — expressible in any formal system, proof
  assistant, or programming language.
- **Composable** — admissible classes can nest, chain, or intersect.
- **Falsifiable** — each record specifies exactly what was checked, what passed,
  and what was carried.

---

## 2. Core Structures

### 2.1 Bridge Status

A **bridge condition** is a single verifiable proposition whose truth is
assertible under the admissible evidence. Each bridge condition carries a
status taken from the following set:

| Status    | Meaning |
|-----------|---------|
| `closed`  | The condition is verified within the admissible class. |
| `open`    | The condition is not yet verified. |
| `partial` | The condition is verified for a proper subclass of the admissible class. |

A *bridge* is a finite ordered collection of bridge conditions. The bridge is
**closed** when every condition in the collection has status `closed`.

### 2.2 Gate Status

A **gate condition** is a higher-order criterion that certifies the closure of
the verification pipeline itself — not a mathematical claim but a
metacognitive check that the verification process was carried out correctly.
Each gate condition carries a status:

| Status    | Meaning |
|-----------|---------|
| `closed`  | The gate criterion passed with strict margin. |
| `open`    | The gate criterion did not pass. |
| `strict`  | The gate criterion passed, but the margin is tight or non-degenerate. |

A *gate* is a finite ordered collection of gate conditions. The gate is
**closed** when every condition has status `closed` or `strict`.

### 2.3 Remainder Status

The **remainder** is the portion of the classical unrestricted claim that falls
outside the admissible class. Its status is one of:

| Status     | Meaning |
|------------|---------|
| `carried`  | The remainder is explicitly identified and preserved; no claim is made about it. |
| `closed`   | The remainder has been shown to be empty (the admissible class covers the full classical claim). |
| `unknown`  | The remainder has not been analyzed. |

### 2.4 Admissible Class

An **admissible class** \( \mathcal{A} \) is a triple

\[
\mathcal{A} = (S, B, G)
\]

where:

- \( S \) is a **scope identifier** (a string naming the domain of discourse);
- \( B = \{b_1, \ldots, b_n\} \) is a finite set of **bridge conditions**, each
  with an associated status \( \sigma(b_i) \in \{\text{closed}, \text{open}, \text{partial}\} \);
- \( G = \{g_1, \ldots, g_m\} \) is a finite set of **gate conditions**, each
  with an associated status \( \tau(g_j) \in \{\text{closed}, \text{open}, \text{strict}\} \).

The admissible class defines the epistemic boundary within which verification
is claimed. Outside this boundary, no claim is made, and the remainder is
carried.

---

## 3. The Verification Method

### 3.1 Procedure

Given a mathematical claim \( C \) and an admissible class \( \mathcal{A} \):

1. **Scope assignment.** Identify the scope \( S \) of \( C \) and ensure
   \( \mathcal{A} \) names a compatible scope. If no admissible class exists,
   define one.

2. **Bridge enumeration.** List the bridge conditions \( B \) that must hold
   for \( C \) to be assertible within \( S \). For each \( b_i \in B \),
   determine its status \( \sigma(b_i) \) by any sound verification procedure
   (proof, computation, citation of existing theorem, etc.).

3. **Gate enumeration.** List the gate conditions \( G \) — the metacognitive
   checks on the verification pipeline itself. These may include:
   - Consistency checks on the bridge conditions;
   - Independence checks (no condition is redundant);
   - Proof-trace audits;
   - Toolchain-verification checks (e.g., kernel validation).

4. **Remainder identification.** Identify the portion of \( C \) that is not
   covered by \( \mathcal{A} \). Assign it a remainder status.

5. **Closure evaluation.** The claim \( C \) is **epistemologically closed**
   under \( \mathcal{A} \) if and only if:
   \[
   \bigwedge_{i=1}^n (\sigma(b_i) = \text{closed}) \quad \land \quad
   \bigwedge_{j=1}^m (\tau(g_j) \in \{\text{closed}, \text{strict}\})
   \]
   That is: the bridge is closed and the gate is closed.

6. **Record production.** Emit an epistemological closure record containing:
   - the claim name and scope;
   - the admissible class;
   - the bridge status, gate status, and remainder status;
   - the verification notes;
   - a timestamp.

### 3.2 Closure Theorem

For any admissible class \( \mathcal{A} \) with all bridge conditions closed and
all gate conditions closed, the claim is **constrained-closed** under
\( \mathcal{A} \). This is a theorem of the method itself — it follows from
the definition of closure and requires no additional axioms.

Formally:

> If \( \mathcal{A} = (S, B, G) \) and
> \( \forall b \in B,\; \sigma(b) = \text{closed} \) and
> \( \forall g \in G,\; \tau(g) \in \{\text{closed}, \text{strict}\} \),
> then \( C \) is *constrained-closed* under \( \mathcal{A} \).

No claim is made about the classical unrestricted status of \( C \).

---

## 4. Properties

### 4.1 Soundness

If the verification procedure for each bridge condition is sound (i.e., the
condition truly holds when its status is `closed`), and each gate condition
is sound, then the overall closure claim is sound. The method inherits the
soundness of its components.

### 4.2 Monotonicity

If a claim is constrained-closed under \( \mathcal{A} \), and \( \mathcal{A}' \)
is an admissible class that contains every bridge and gate condition of
\( \mathcal{A} \) with the same status, then the claim remains
constrained-closed under \( \mathcal{A}' \).

### 4.3 Composability

Given admissible classes \( \mathcal{A}_1 \) and \( \mathcal{A}_2 \) for the
same claim \( C \), the intersection class
\( \mathcal{A}_\cap = (S, B_1 \cup B_2, G_1 \cup G_2) \) is also an admissible
class. If \( C \) is constrained-closed under both \( \mathcal{A}_1 \) and
\( \mathcal{A}_2 \), it is constrained-closed under \( \mathcal{A}_\cap \).

### 4.4 Remainder Transparency

The remainder is always explicit. There is no implicit assumption that the
admissible class covers the full claim. This prevents the common fallacy of
treating a constrained result as an unrestricted proof.

---

## 5. Worked Example

**Claim:** The Twin Prime Conjecture (infinitely many prime pairs \( p, p+2 \)).

**Admissible class:**
- Scope: `analytic_number_theory`
- Bridge conditions:
  1. `zeta_zero_distribution` — closed (the pair-correlation conjecture bounds
     the zero proportion under the Riemann Hypothesis within the analytic
     number theory admissible class)
  2. `explicit_formula` — closed (connects prime gaps to zero-free regions
     within the admissible class)
- Gate conditions:
  1. bridge/gate consistency — closed
  2. remainder identification — closed

**Closure evaluation:**
- Bridge: closed (both conditions closed)
- Gate: closed (both conditions pass)
- Remainder: carried (the classical Twin Prime Conjecture is not claimed;
  only the constrained closure under the analytic number theory admissible class)

**Outcome:** The claim is constrained-closed under the analytic number theory
admissible class. The classical unrestricted conjecture is carried as remainder.

---

## 6. Independence from Implementation

The method is defined entirely in terms of abstract structures (sets, tuples,
status assignments) and logical operations (conjunction, membership). It does
not depend on:

- any specific theorem prover (Lean, Coq, Isabelle, etc.);
- any specific programming language;
- any specific file format;
- any specific verification procedure for individual bridge conditions.

Any implementation that reproduces the three-part structure of admissible class,
bridge, gate, and remainder, and that evaluates closure according to the
procedure in Section 3, is an implementation of this method.

---

## 7. Relation to Existing Work

The method differs from:

- **Standard theorem proving** — which asserts full classical closure and does
  not distinguish admissible class from remainder.
- **Dependent type theory** — which embeds proofs in types but does not
  separately track epistemological status across bridge and gate dimensions.
- **Proof-carrying code** — which certifies safety properties but not
  epistemological boundedness.
- **Partial formalization** — which leaves gaps as `sorry` or `admit` without
  classifying them as remainder.

---

## 8. Discussion

The admissible-class bridge/gate method addresses a structural gap in
mathematical epistemology: the lack of a formal intermediate status between
"proved" and "not proved." By making the admissible class explicit, the method
allows mathematicians and formal verification systems to:

1. Claim credit for constrained results without over-claiming classical closure;
2. Carry the remainder transparently so that future work can address it;
3. Compose partial results across different admissible classes;
4. Produce machine-verifiable epistemological records that are independent of
   the verification backend.

The method is not a substitute for classical proof. It is a complement — one
that makes the epistemological state of a mathematical claim richer, more
transparent, and more useful for collaborative and automated reasoning.

---

## References

1. HautevilleHouse. *Canonical Lane Mathlib Core*. GitHub repository,
   github.com/HautevilleHouse/canonical-lane-mathlib, 2026.
2. HautevilleHouse. *NORMATIVE_EXPECTATION.md — Doctrine and time capsule*.
   In canonical-lane-mathlib, 2026.
3. HautevilleHouse. *GateDSL — Embedded DSL for epistemological closure*.
   In canonical-lane-mathlib/CanonicalLaneMathlibCore/GateDSL.lean, 2026.
