import Mathlib.Analysis.InnerProductSpace

namespace HautevilleHouse
namespace Analysis

structure BanachOperator where
  domain : Type
  is_bounded : Prop
  is_linear : Prop

theorem invariant_subspace_counterexample : ∃ (T : BanachOperator), True := by
  sorry

theorem k_theory_assembly_obstruction : True := by
  trivial

end Analysis
end HautevilleHouse

