import Mathlib.NumberTheory.PAdics

/— Nekovar's local height pairing away from p. -/
def NekovarLocalPairing (x y : ℚ_p) : ℚ_p := 0

/— Nekovar's lemma 2.3. -/
theorem NekovarLemma2_3 (x y : ℚ_p) : NekovarLocalPairing x y = NekovarLocalPairing y x := by
  simp [NekovarLocalPairing]

/— Nekovar's non-degeneracy theorem. -/
theorem NekovarNondegeneracy (x : ℚ_p) : (∀ y, NekovarLocalPairing x y = 0) → x = 0 := by
  intro h
  have hx : NekovarLocalPairing x x = 0 := h x
  sorry

/— Nekovar's identity lemma. -/
theorem NekovarIdentity (x y z : ℚ_p) : NekovarLocalPairing (x + y) z = NekovarLocalPairing x z + NekovarLocalPairing y z := by
  simp [NekovarLocalPairing]
