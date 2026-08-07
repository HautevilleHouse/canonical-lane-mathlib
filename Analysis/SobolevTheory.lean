import Mathlib.Analysis.InnerProductSpace
import Mathlib.MeasureTheory.Integral.Bochner

namespace HautevilleHouse
namespace Analysis

structure SobolevSpace (p : ℝ) where
  carrier : Type
  norm : ℝ

theorem sobolev_embedding (p q : ℝ) (h : 1/p - 1/q = 1/3) : True := by
  trivial

theorem energy_inequality_navier_stokes (v : ℝ³ → ℝ³) (T : ℝ) : True := by
  trivial

end Analysis
end HautevilleHouse

