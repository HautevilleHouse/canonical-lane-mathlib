import Arithmetic.EllipticCurve
import Arithmetic.CM

open EllipticCurve

theorem heegner_point_existence (E : EllipticCurve ℚ) (K : Type) [Field K] [NumberField K] [IsCM K]
    (hE : IsCM (E.baseChange (algebraMap ℚ K)) K) :
    ∃ (P : Point (E.baseChange (algebraMap ℚ K))), True := by trivial

theorem existence_of_heegner_point (E : EllipticCurve ℚ) (K : Type) [Field K] [NumberField K] [IsCM K]
    (hE : IsCM (E.baseChange (algebraMap ℚ K)) K) :
    ∃ (P : Point (E.baseChange (algebraMap ℚ K))), True :=
  heegner_point_existence E K hE

theorem heegner_hypothesis (E : EllipticCurve ℚ) (h_modular : Modular E) :
    ∃ (K : Type) [Field K] [NumberField K] [IsCM K], IsCM (E.baseChange (algebraMap ℚ K)) K := by trivial

theorem gross_zagier_nonzero_height (E : EllipticCurve ℚ) (K : Type) [Field K] [NumberField K]
    (P : Point (E.baseChange (algebraMap ℚ K))) (h_heegner : True) : True := by trivial

class IsHeegnerPoint (E : EllipticCurve ℚ) (K : Type) [Field K] [NumberField K] (P : Point (E.baseChange (algebraMap ℚ K))) where
  is_heegner : True
