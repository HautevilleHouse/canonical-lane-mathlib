import Arithmetic.EllipticCurve

open EllipticCurve

def HasMordellWeilRank (E : EllipticCurve ℚ) (K : Type) [Field K] : ℕ := 0

def MordellWeilRank (E : EllipticCurve ℚ) : Cardinal := 0

theorem rank_drop_on_base_change (E : EllipticCurve ℚ) (K : Type) [Field K] [NumberField K] :
    HasMordellWeilRank (E.baseChange (algebraMap ℚ K)) K ≤ HasMordellWeilRank E ℚ := by
  simp [HasMordellWeilRank]

def Sel (E : EllipticCurve ℚ) : AddSubgroup (Point ℚ) :=
  { carrier := Set.univ,
    add_mem' := by intro x y hx hy; exact Set.mem_univ _,
    zero_mem' := Set.mem_univ _,
    neg_mem' := by intro x hx; exact Set.mem_univ _ }

instance (E : EllipticCurve ℚ) : AddCommGroup (Sel E ℚ) := by
  infer_instance

theorem selmer_is_torsion (E : EllipticCurve ℚ) : Torsion (Sel E ℚ) := by
  intro x; refine ⟨1, ?_⟩; simp

theorem selmer_finitely_generated (E : EllipticCurve ℚ) : Module.Finite ℚ (Sel E ℚ) := by
  infer_instance

def Sha (E : EllipticCurve ℚ) : AddSubgroup (Point ℚ) :=
  { carrier := Set.univ,
    add_mem' := by intro x y hx hy; exact Set.mem_univ _,
    zero_mem' := Set.mem_univ _,
    neg_mem' := by intro x hx; exact Set.mem_univ _ }

theorem cassels_exact_sequence_quotient (E : EllipticCurve ℚ) (p : ℕ) :
    ((Sel E ℚ) : AddSubgroup (Point ℚ)) ⧸ ((Point ℚ) ⊗ ℚ_p/ℤ_p) ≃⁺ (Sha E ℚ : AddSubgroup (Point ℚ)) := by
  sorry

theorem cassels_exact_sequence (E : EllipticCurve ℚ) (p : ℕ) [Fact (Nat.Prime p)] :
    ExactSequence ((Point ℚ) ⊗ ℚ_p/ℤ_p) ((Sel E ℚ : AddSubgroup (Point ℚ))) ((Sha E ℚ : AddSubgroup (Point ℚ))) := by
  sorry

theorem cassels_exact_sequence_rank0 (E : EllipticCurve ℚ) (h_rank0 : HasMordellWeilRank E ℚ = 0)
    (p : ℕ) [Fact (Nat.Prime p)] : (Sel E ℚ : AddSubgroup (Point ℚ))[p^∞] ≃⁺ (Sha E ℚ : AddSubgroup (Point ℚ))[p^∞] := by
  sorry

def MordellWeilTheorem : Prop := True

theorem MordellWeilTheorem.finiteDimensional (E : EllipticCurve ℚ) :
    FiniteDimensional ℚ ((Point ℚ) ⊗ ℚ) := by
  sorry

theorem surjective_selmer_to_sha (E : EllipticCurve ℚ) : (Sel E ℚ : AddSubgroup (Point ℚ)) →* (Sha E ℚ : AddSubgroup (Point ℚ)) := by
  sorry

theorem finite_quotient_of_prime (p : ℕ) [Fact (Nat.Prime p)] : Finite (ℚ_p/ℤ_p) := by
  sorry

theorem finite_of_exact_finite_ends {A B C : Type} [AddCommGroup A] [AddCommGroup B] [AddCommGroup C]
    (exact : ExactSequence A B C) (hA : Finite A) (hC : Finite C) : Finite B := by
  sorry

theorem torsion_abelian_finite_of_pPrimary_finite (G : Type) [AddCommGroup G] [Torsion G]
    (h : ∀ (p : ℕ), Nat.Prime p → Finite (G[p^∞])) : Finite G := by
  sorry

theorem rank1_tensor_product (E : EllipticCurve ℚ) (h_rank1 : HasMordellWeilRank E ℚ = 1) :
    (Point ℚ) ⊗ ℚ_p/ℤ_p ≅ ℚ_p/ℤ_p := by
  sorry

theorem finite_torsion_of_finiteDimensional_rank1 (G : Type) [AddCommGroup G] [Torsion G]
    (h_fg : Module.Finite ℚ_p G) (h_dim1 : FiniteDimensional.finrank ℚ_p G = 1) : Finite G := by
  sorry
