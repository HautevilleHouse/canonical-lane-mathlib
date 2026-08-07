import Mathlib.Algebra.Polynomial

namespace HautevilleHouse
namespace Analysis

structure PolynomialMap (n : ℕ) where
  components : ℕ → ℕ
  det_jacobian : ℕ

theorem jacobian_counterexample : ∃ (F : PolynomialMap 2), True := by
  sorry

end Analysis
end HautevilleHouse

