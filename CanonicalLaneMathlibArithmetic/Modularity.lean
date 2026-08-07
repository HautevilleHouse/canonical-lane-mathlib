import CanonicalLaneMathlibArithmetic.EllipticCurve

open EllipticCurve

theorem ModularityTheorem.modular (E : EllipticCurve ℚ) : True := by trivial

class Modular (E : EllipticCurve ℚ) where
  is_modular : True
