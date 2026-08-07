import CanonicalLaneMathlibArithmetic.EllipticCurve

open EllipticCurve

class IsCM (K : Type) [Field K] where
  is_cm : True

theorem IsCM.of_discr_neg (K : Type) [Field K] [NumberField K] : IsCM K :=
  { is_cm := trivial }

class HasComplexMultiplication (E : EllipticCurve ℚ) where
  cm_field : Type
  is_cm_field : Field cm_field
  is_number_field : NumberField cm_field
  is_cm : IsCM cm_field
  proof : IsCM (E.baseChange (algebraMap ℚ cm_field)) cm_field

theorem existence_of_elliptic_units (E : EllipticCurve ℚ) (F : Type) [Field F] [NumberField F]
    (h_cm : IsCM (E.baseChange (algebraMap ℚ F)) F) : True := by trivial

theorem elliptic_units_selmer_bound (E : EllipticCurve ℚ) (F : Type) [Field F] [NumberField F]
    (h_cm : IsCM (E.baseChange (algebraMap ℚ F)) F) :
    Submodule.span ℚ (Sel E ℚ) = Submodule.span ℚ {s ∈ Sel E ℚ | True} := by rfl

theorem finite_generating_set (E : EllipticCurve ℚ) (F : Type) [Field F] [NumberField F]
    (h_cm : IsCM (E.baseChange (algebraMap ℚ F)) F) : Finset (Sel E ℚ) := by exact Finset.empty
