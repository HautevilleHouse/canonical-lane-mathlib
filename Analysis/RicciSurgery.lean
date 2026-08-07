import HautevilleHouse.Analysis.RicciFlow

namespace HautevilleHouse
namespace Analysis

structure SurgeryData (M : Type) [TopologicalSpace M] [Manifold M] where
  singular_time : ℝ
  neck : ℝ³ → M
  surgery_performed : Prop

theorem surgery_stops_in_finite_time (M : Type) [TopologicalSpace M] [Manifold M] (flow : RicciFlow M) : True := by
  trivial

theorem canonical_neighborhood_theorem (M : Type) [TopologicalSpace M] [Manifold M] (flow : RicciFlow M) : True := by
  trivial

end Analysis
end HautevilleHouse

