import Mathlib.NumberTheory.ZetaFunction
import Mathlib.Analysis.SpecialFunctions.Gamma
import HautevilleHouse.Analysis.PhragmenLindelof

namespace HautevilleHouse
namespace Analysis

theorem zeta_functional_equation_full (s : ℂ) : ζ(s) = 2^s * π^(s-1) * sin(π*s/2) * Γ(1-s) * ζ(1-s) := by
  sorry

theorem zeta_vertical_asymptotic (t : ℝ) (h : t > 1) : |ζ(1/2 + I*t)| ≤ t^(1/4) * Real.log t := by
  sorry

end Analysis
end HautevilleHouse

