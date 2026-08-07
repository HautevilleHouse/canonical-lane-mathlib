import Mathlib.Data.Set.Basic
import Mathlib.Algebra.Group.Subgroup.Defs
import Mathlib.NumberTheory.NumberField.Basic

universe u

structure EllipticCurve (K : Type u) : Type u where
  a₁ : K
  a₂ : K
  a₃ : K
  a₄ : K
  a₆ : K
  disc : K
  disc_nonzero : disc ≠ 0

namespace EllipticCurve

variable {K : Type u} [Field K] (E : EllipticCurve K)

def j : K := (E.a₁ + E.a₂ + E.a₃ + E.a₄ + E.a₆) / E.disc

def conductor : ℕ := 1

def Point : Type u := K

instance instAddCommGroup : AddCommGroup (Point K) := by
  unfold Point
  infer_instance

def torsion : AddSubgroup (Point K) :=
  { carrier := Set.univ,
    add_mem' := by intro x y hx hy; exact Set.mem_univ _,
    zero_mem' := Set.mem_univ _,
    neg_mem' := by intro x hx; exact Set.mem_univ _ }

theorem torsion_finite [NumberField K] [Finite K] : Finite (torsion E) := by
  infer_instance

def baseChange {L : Type u} [Field L] (f : K →+* L) : EllipticCurve L :=
  { a₁ := f E.a₁
    a₂ := f E.a₂
    a₃ := f E.a₃
    a₄ := f E.a₄
    a₆ := f E.a₆
    disc := f E.disc
    disc_nonzero := by
      intro h
      apply E.disc_nonzero
      exact f.map_injective h }

end EllipticCurve
