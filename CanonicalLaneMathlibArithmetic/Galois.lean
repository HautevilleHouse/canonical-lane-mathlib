import CanonicalLaneMathlibArithmetic.EllipticCurve

open EllipticCurve

def TateModule (E : EllipticCurve ℚ) (ℓ : ℕ) : Type := ℤ × ℤ

structure GaloisRepresentation (K L : Type) [Field K] [Field L] where
  space : Type
  action : (Gal (algebraicClosure K / K)) → space → space
