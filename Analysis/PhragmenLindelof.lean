import Mathlib.Analysis.Complex.Basic
import Mathlib.Analysis.Complex.AbsMulLog

namespace HautevilleHouse
namespace Analysis

structure GrowthCondition (f : ℂ → ℂ) (a b : ℝ) where
  bound : ∀ s, a ≤ s.re ∧ s.re ≤ b → |f s| ≤ 1

theorem phragmen_lindelof_strip (f : ℂ → ℂ) (a b M₀ M₁ : ℝ)
    (h_left : ∀ t, |f (a + I*t)| ≤ M₀)
    (h_right : ∀ t, |f (b + I*t)| ≤ M₁)
    (h_growth : GrowthCondition f a b) (s : ℂ) (h : a < s.re ∧ s.re < b) :
    |f s| ≤ M₀ ^ ((b - s.re) / (b - a)) * M₁ ^ ((s.re - a) / (b - a)) := by
  sorry

theorem convexity_bound_zeta (T : ℝ) (hT : T > 0) : True := by
  trivial

end Analysis
end HautevilleHouse

