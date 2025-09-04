import Mathlib

open Nat

/-- For m,n ≥ 1 with gcd(m,n)=1, ZMod m × ZMod n ≃+ ZMod (m * n). -/
noncomputable def srdoty_alg_abelian_389 {m n : ℕ} (hm : 1 ≤ m) (hn : 1 ≤ n) (h : Coprime m n) :
  (ZMod m) × (ZMod n) ≃+ ZMod (m * n) := by
  sorry
