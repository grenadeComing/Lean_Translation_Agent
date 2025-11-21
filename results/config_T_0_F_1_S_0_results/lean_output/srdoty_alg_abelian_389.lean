import Mathlib

/-!
Prove that for integers m,n ≥ 1 with gcd(m,n)=1, one has Z_m × Z_n ≅ Z_{mn}.
This is the Chinese Remainder Theorem for ZMod (additive groups).
-/

def zmod_prod_equiv_zmod_mul_of_coprime {m n : ℕ} (hm : 1 ≤ m) (hn : 1 ≤ n) (h : Nat.gcd m n = 1) :
  AddEquiv (ZMod m × ZMod n) (ZMod (m * n)) := by sorry
