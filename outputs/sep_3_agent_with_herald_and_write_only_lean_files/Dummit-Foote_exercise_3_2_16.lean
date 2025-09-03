import Mathlib

/--
Fermat's Little Theorem (as an equality in ZMod p):
For a prime p and any integer a, a^p ≡ a (mod p).
We state it as (a : ZMod p)^p = (a : ZMod p).
Proof sketch: apply Lagrange's theorem to the multiplicative group (Z/pZ)^× and handle the case a ≡ 0 (mod p) separately.
-/
theorem fermat_little_theorem (p : ℕ) (hp : p.Prime) (a : ℤ) :
  (a : ZMod p) ^ p = (a : ZMod p) := by
  sorry
