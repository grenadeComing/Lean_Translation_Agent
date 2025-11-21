import Mathlib

/-- For integers m,n ≥ 1 with gcd(m,n)=1, the product Z_m × Z_n is additively
isomorphic to Z_{m n}. -/
theorem chinese_remainder_add_equiv (m n : ℕ) (hm : 1 ≤ m) (hn : 1 ≤ n) (hcop : Coprime m n) :
  AddEquiv (ZMod m × ZMod n) (ZMod (m * n)) := by sorry