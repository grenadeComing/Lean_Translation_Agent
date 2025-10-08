import Mathlib

/-
Show that if m,n are relatively prime then C_{mn} ≅ C_m × C_n.
Here C_n is the cyclic group of order n, modeled by ZMod n (the additive cyclic group).
-/

def zmod_mul_equiv_of_gcd_eq_one {m n : ℕ} (h : Nat.gcd m n = 1) :
  AddEquiv (ZMod (m * n)) (ZMod m × ZMod n) := by
  sorry
