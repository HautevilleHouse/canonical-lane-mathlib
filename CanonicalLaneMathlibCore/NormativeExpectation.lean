import CanonicalLaneMathlibCore.Basic

/-!
# Normative expectation flags

These booleans record the public doctrine of the Canonical Lane Mathlib surface.
They are intentionally *not* classical refutations of named conjectures.

See `NORMATIVE_EXPECTATION.md` and `registry/prediction_time_capsule.json`.
-/

namespace HautevilleHouse
namespace CanonicalLaneMathlibCore
namespace NormativeExpectation

structure Doctrine where
  manifoldConstrainedClosureInScope : Bool
  unrestrictedClassicalClosureInScope : Bool
  localSuccessMayPromoteToClassicalClosure : Bool
  predictionIsTheorem : Bool
  deriving Repr, DecidableEq

def doctrine : Doctrine := {
  manifoldConstrainedClosureInScope := true
  unrestrictedClassicalClosureInScope := false
  localSuccessMayPromoteToClassicalClosure := false
  predictionIsTheorem := false
}

def DoctrineLawful (D : Doctrine) : Prop :=
  D.manifoldConstrainedClosureInScope = true ∧
  D.unrestrictedClassicalClosureInScope = false ∧
  D.localSuccessMayPromoteToClassicalClosure = false ∧
  D.predictionIsTheorem = false

theorem doctrine_lawful : DoctrineLawful doctrine := by
  exact And.intro rfl (And.intro rfl (And.intro rfl rfl))

/-- Closure gates may close on an admitted lane; classical remainder stays explicit. -/
theorem closure_gate_allows_remainder
    {X : Type u} [Add X] [Sub X] (G : ClosureGate X)
    (h : G.remainderRecorded) : G.closed :=
  ClosureGate.closed_by_remainder G h

end NormativeExpectation
end CanonicalLaneMathlibCore
end HautevilleHouse
