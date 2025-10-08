import Mathlib

/-- If m and n are coprime then ZMod (m * n) is additively equivalent to ZMod m × ZMod n. -/
def zmod_mul_equiv_prod {m n : ℕ} (hc : Nat.Coprime m n) :
  AddEquiv (ZMod (m * n)) (ZMod m × ZMod n) := by
  sorry
