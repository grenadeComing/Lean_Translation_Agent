import Mathlib
open Function
open ZMod

/-- For integers m,n ≥ 1 with gcd(m,n)=1, one has Z_m × Z_n ≅ Z_{mn}. -/
noncomputable def srdoty_alg_abelian_389 (m n : ℕ) [NeZero m] [NeZero n] (h : m.gcd n = 1) :
  ZMod m × ZMod n ≃ ZMod (m * n) := by sorry
