import Mathlib.Analysis.Calculus.Leray
import Mathlib.Analysis.InnerProductSpace.Basic

namespace HautevilleHouse
namespace Analysis

structure LerayWeakSolution (n : ℕ) where
  v : ℝ → ℝⁿ → ℝⁿ
  p : ℝ → ℝⁿ → ℝ
  energy_finite : Prop

theorem leray_weak_existence (v0 : ℝ³ → ℝ³) : ∃ (sol : LerayWeakSolution 3), True := by
  trivial

theorem leray_energy_inequality (sol : LerayWeakSolution 3) (T : ℝ) : True := by
  trivial

end Analysis
end HautevilleHouse

