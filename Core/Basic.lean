import Mathlib.Data.Set.Basic
import Mathlib.Algebra.Group.Defs

namespace HautevilleHouse
namespace Core

structure Projection (X : Type u) where
  toFun : X -> X
  idempotent : forall x : X, toFun (toFun x) = toFun x

namespace Projection

def fixedSet {X : Type u} (π : Projection X) : Set X :=
  {x | π.toFun x = x}

theorem idempotent_apply {X : Type u} (π : Projection X) (x : X) :
    π.toFun (π.toFun x) = π.toFun x :=
  π.idempotent x

theorem image_fixed {X : Type u} (π : Projection X) (x : X) :
    π.toFun x ∈ π.fixedSet := by
  exact π.idempotent x

end Projection

structure AdditiveLane (X : Type u) [Add X] [Sub X] where
  state : X
  delta : X
  projection : Projection X
  admissible : Set X

namespace AdditiveLane

def xNext {X : Type u} [Add X] [Sub X] (L : AdditiveLane X) : X :=
  L.state + L.projection.toFun L.delta

def carriedComponent {X : Type u} [Add X] [Sub X] (L : AdditiveLane X) : X :=
  L.delta - L.projection.toFun L.delta

theorem x_next_eq {X : Type u} [Add X] [Sub X] (L : AdditiveLane X) :
    L.xNext = L.state + L.projection.toFun L.delta := by
  rfl

theorem carried_component_eq {X : Type u} [Add X] [Sub X] (L : AdditiveLane X) :
    L.carriedComponent = L.delta - L.projection.toFun L.delta := by
  rfl

theorem projection_idempotent_on_delta {X : Type u} [Add X] [Sub X] (L : AdditiveLane X) :
    L.projection.toFun (L.projection.toFun L.delta) = L.projection.toFun L.delta := by
  exact L.projection.idempotent L.delta

end AdditiveLane

structure ClosureGate (X : Type u) [Add X] [Sub X] where
  lane : AdditiveLane X
  endpointSatisfied : Prop
  remainderRecorded : Prop

namespace ClosureGate

def closed {X : Type u} [Add X] [Sub X] (G : ClosureGate X) : Prop :=
  G.endpointSatisfied ∨ G.remainderRecorded

theorem closed_by_endpoint {X : Type u} [Add X] [Sub X] (G : ClosureGate X)
    (h : G.endpointSatisfied) : G.closed := by
  exact Or.inl h

theorem closed_by_remainder {X : Type u} [Add X] [Sub X] (G : ClosureGate X)
    (h : G.remainderRecorded) : G.closed := by
  exact Or.inr h

end ClosureGate

end Core
end HautevilleHouse
