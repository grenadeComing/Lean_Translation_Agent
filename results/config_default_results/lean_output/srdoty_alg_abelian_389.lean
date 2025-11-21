import Mathlib

/-- For integers m,n ≥ 1 with gcd(m,n)=1, Z_m × Z_n ≅ Z_{mn}. -/
def zmod_mul_equiv {m n : ℕ} (hm : 1 ≤ m) (hn : 1 ≤ n) (h : Nat.Coprime m n) :
  (ZMod m × ZMod n) ≃+ ZMod (m * n) := by sorry
