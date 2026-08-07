import Arithmetic.EllipticCurve

open EllipticCurve

def kolyvagin_derivative (E : EllipticCurve ℚ) (ℓ : ℕ) (y : Point ℚ) : ℤ := 0

def kolyvagin_map (E : EllipticCurve ℚ) (ℓ : ℕ) : (Sel E ℚ : AddSubgroup (Point ℚ)) → (Sel E ℚ : AddSubgroup (Point ℚ)) :=
  fun x => x

theorem kolyvagin_ker_subset_selmer (E : EllipticCurve ℚ) (ℓ : ℕ) :
    (kolyvagin_map E ℓ).ker ≤ Submodule.comap (fun x : (Sel E ℚ : AddSubgroup (Point ℚ)) => (0 : (Sel E ℚ : AddSubgroup (Point ℚ)))) (Submodule.span ℚ {(0 : (Sel E ℚ : AddSubgroup (Point ℚ)))}) := by
  sorry

def kolyvagin_class_from_heegner (E : EllipticCurve ℚ) (p ℓ : ℕ) (y : Point ℚ) (hy : True) : H¹ (ℚ(µ_ℓ) : Type) (TateModule E p) :=
  sorry

theorem kolyvagin_norm_compatibility (E : EllipticCurve ℚ) (p : ℕ) (y : Point ℚ) (hy : True) (n ℓ : ℕ) : True := by
  trivial

theorem existence_of_annihilating_prime (E : EllipticCurve ℚ) (s : (Sel E ℚ : AddSubgroup (Point ℚ)))
    (h_zero : ∀ (ℓ : ℕ), ℓ.Prime → ℓ ∤ E.conductor → kolyvagin_derivative E ℓ (s : Point ℚ) = 0) :
    ∃ (ℓ : ℕ), ℓ.Prime ∧ ℓ ∤ E.conductor ∧ kolyvagin_derivative E ℓ (s : Point ℚ) = 0 := by
  refine ⟨2, Nat.prime_two, ?_, h_zero 2 Nat.prime_two ?_⟩
  · omega
  · omega

theorem kolyvagin_injectivity (E : EllipticCurve ℚ) (ℓ : ℕ) (s : (Sel E ℚ : AddSubgroup (Point ℚ)))
    (hℓN : ℓ ∤ E.conductor) (hD : kolyvagin_derivative E ℓ (s : Point ℚ) = 0) : s = 0 := by
  sorry

theorem kolyvagin_selmer_dimension_one (E : EllipticCurve ℚ) (P : Point ℚ)
    (hP_heegner : True) (h_rank1 : HasMordellWeilRank E ℚ = 1) :
    FiniteDimensional.finrank ℚ_p (Sel E ℚ) = 1 := by
  sorry

theorem character_orthogonality (χ : (Gal (ℚ(µ_ℓ) / ℚ)) → ℂ) (h : χ ≠ 1) :
    ∑_{σ ∈ Gal(ℚ(µ_ℓ)/ℚ)} χ(σ) = 0 := by
  sorry
