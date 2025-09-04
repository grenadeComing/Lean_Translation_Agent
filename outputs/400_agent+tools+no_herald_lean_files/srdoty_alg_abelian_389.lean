import Mathlib

/-!
Prove that for integers m,n ≥ 1 with gcd(m,n)=1, one has Z_m × Z_n ≅ Z_{mn}.
We state the Chinese remainder isomorphism for additive groups of ZMod.
-/

open Nat

def zmod_prod_equiv_zmod {m n : ℕ} (hm : 1 ≤ m) (hn : 1 ≤ n) (hc : Nat.Coprime m n) :
  (ZMod m × ZMod n) ≃+ ZMod (m * n) := by sorry
