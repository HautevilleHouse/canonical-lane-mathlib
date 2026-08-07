import CanonicalLaneMathlibArithmetic.EllipticCurve
import CanonicalLaneMathlibArithmetic.Selmer

open EllipticCurve

def pAdicLog (x : ℚ_p) : ℚ_p := 0

theorem pAdicLog_mul (x y : ℚ_p) : pAdicLog (x * y) = pAdicLog x + pAdicLog y := by simp [pAdicLog]

def pAdicHeight (x : ℚ_p) : ℚ_p := 0

def NekovarLocalPairing (x y : ℚ_p) : ℚ_p := 0

def Bcris (V : Type) : Type := V

def BdR (V : Type) : Type := V
