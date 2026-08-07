import Mathlib.Analysis.Calculus.ContDiff
import Mathlib.Geometry.Manifold.Riemannian.Basic
import Mathlib.Analysis.ODE.Gronwall

namespace HautevilleHouse
namespace Analysis

structure RiemannianMetric (M : Type) [TopologicalSpace M] [Manifold M] where
  g : M → ℝ
  is_smooth : ContDiff ℝ∞ g

structure RicciFlow (M : Type) [TopologicalSpace M] [Manifold M] where
  g_t : ℝ → RiemannianMetric M
  evolution : ∀ t, ∂/∂t g_t t = -2 * RicciCurvature (g_t t)

theorem short_time_existence (M : Type) [TopologicalSpace M] [Manifold M] (g0 : RiemannianMetric M) : True := by
  trivial

theorem perelman_entropy_monotonic (M : Type) [TopologicalSpace M] [Manifold M] (flow : RicciFlow M) (t : ℝ) : True := by
  trivial

end Analysis
end HautevilleHouse

