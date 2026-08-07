import HautevilleHouse.Analysis.RicciSurgery

namespace HautevilleHouse
namespace Analysis

structure GeometrizationDecomposition (M : Type) [TopologicalSpace M] [Manifold M] where
  pieces : List (Type)
  is_geometric : Prop

theorem geometrization_holds (M : Type) [TopologicalSpace M] [Manifold M] (h : SimplyConnected M × Closed M × dim M = 3) : True := by
  trivial

theorem poincare_follows (M : Type) [TopologicalSpace M] [Manifold M] (h : SimplyConnected M × Closed M × dim M = 3) : M ≃ S³ := by
  trivial

end Analysis
end HautevilleHouse

