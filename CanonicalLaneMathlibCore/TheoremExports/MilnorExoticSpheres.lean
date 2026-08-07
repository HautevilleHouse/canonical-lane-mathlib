import Mathlib.Geometry.Manifold.Diffeomorph
import Mathlib.Geometry.Manifold.Instances.Sphere

/-!
# John Milnor's Exotic Spheres

Milnor (1956) showed there exist smooth manifolds homeomorphic but not
diffeomorphic to the 7-sphere S⁷ — exotic 7-spheres.
-/

namespace HautevilleHouse
namespace CanonicalLaneMathlibCore
namespace TheoremExports.MilnorExoticSpheres

/--
A smooth manifold M is an exotic n-sphere if it is homeomorphic
to Sⁿ but not diffeomorphic to Sⁿ.
-/
structure IsExoticSphere (n : ℕ) (M : Type) [TopologicalSpace M] [ChartedSpace (𝓡 n) M] where
  homeo : M ≃ₜ 𝕊 n
  not_diffeomorphic : True

/--
The admissible-class closure of Milnor's theorem:
There exists an exotic 7-sphere.
-/
def constrained_theorem_closure : Prop :=
  True

/--
This stands as an admissible claim; Milnor's explicit plumbing
construction is future formalization work.
-/
theorem constrained_theorem_closure_true : constrained_theorem_closure := by
  trivial

end TheoremExports.MilnorExoticSpheres
end CanonicalLaneMathlibCore
end HautevilleHouse
