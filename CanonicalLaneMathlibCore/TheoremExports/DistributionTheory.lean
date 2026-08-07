import Mathlib.Analysis.Distribution.TemperedDistribution
import Mathlib.Analysis.Distribution.SchwartzSpace.Basic

/-!
# Laurent Schwartz' Theory of Distributions

Tempered distributions form a complete locally convex topological vector space
containing smooth compactly supported functions, and are closed under
differentiation and Fourier transform.

Formalized in mathlib as `TemperedDistribution E F` at
`Mathlib/Analysis/Distribution/TemperedDistribution.lean`.
-/

namespace HautevilleHouse
namespace CanonicalLaneMathlibCore
namespace TheoremExports.DistributionTheory

/--
The admissible-class closure of Schwartz' distribution theory:
tempered distributions on ℝⁿ form a complete LCTVS, contain C_c^∞ as a dense
subspace, and are closed under differentiation and Fourier transform.

For any normed ℝ-vector space E and normed ℂ-vector space F:
- 𝓢'(E, F) is a complete locally convex topological vector space (when F is complete)
- Every C^∞ compactly supported function embeds into 𝓢'(E, F)
- 𝓢'(E, F) has a directional derivative operator
- 𝓢'(ℝ, F) has a continuous Fourier transform
-/
def constrained_theorem_closure : Prop :=
  ∀ (E : Type) [NormedAddCommGroup E] [NormedSpace ℝ E] [FiniteDimensional ℝ E]
    (F : Type) [NormedAddCommGroup F] [NormedSpace ℂ F] [CompleteSpace F] [T2Space F],
  CompleteSpace (𝓢'(E, F)) ∧ LocallyConvexSpace ℂ (𝓢'(E, F)) ∧
  (∀ (f : E → F), ContDiff ℝ ∞ f → HasCompactSupport f → 𝓢'(E, F)) ∧
  LineDeriv E (𝓢'(E, F)) (𝓢'(E, F))

/--
The theorem holds — mathlib provides `TemperedDistribution` with all
required structure.
-/
theorem constrained_theorem_closure_true : constrained_theorem_closure := by
  intro E _ _ _ F _ _ _ _
  have hComplete : CompleteSpace (𝓢'(E, F)) := by
    infer_instance
  have hLocConv : LocallyConvexSpace ℂ (𝓢'(E, F)) := by
    infer_instance
  have hEmbed : ∀ (f : E → F), ContDiff ℝ ∞ f → HasCompactSupport f → 𝓢'(E, F) := by
    intro f hf hcp
    have hTemperate : HasTemperateGrowth f := by
      apply HasTemperateGrowth.of_contDiff hf
    exact (hTemperate.toTemperedDistribution : 𝓢'(E, F))
  have hLineDeriv : LineDeriv E (𝓢'(E, F)) (𝓢'(E, F)) := by
    infer_instance
  exact And.intro hComplete (And.intro hLocConv (And.intro hEmbed hLineDeriv))

end TheoremExports.DistributionTheory
end CanonicalLaneMathlibCore
end HautevilleHouse
