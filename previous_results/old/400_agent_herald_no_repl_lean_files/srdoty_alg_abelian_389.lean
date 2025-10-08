import Mathlib

/--
For m,n ≥ 1 with gcd(m,n) = 1, the Chinese remainder theorem gives an isomorphism
ZMod (m * n) ≃+ ZMod m × ZMod n (as additive groups).
-/
theorem zmod_mul_equiv_prod (m n : ℕ) (hm : 1 ≤ m) (hn : 1 ≤ n) (hc : Nat.Coprime m n) :
  AddEquiv (ZMod (m * n)) (ZMod m × ZMod n) := by sorry
