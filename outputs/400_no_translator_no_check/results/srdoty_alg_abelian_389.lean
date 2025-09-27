import Mathlib

/-!
Statement: For integers m, n ≥ 1 with gcd(m,n) = 1, we have
Z_m × Z_n ≃+ Z_{m n} (additive group isomorphism).
-/

noncomputable def zmod_mul_equiv_of_coprime {m n : Nat} (hm : 1 ≤ m) (hn : 1 ≤ n) (hcop : m.Coprime n) :
  (ZMod m × ZMod n) ≃+ ZMod (m * n) := by sorry
