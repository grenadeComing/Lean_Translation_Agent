import Mathlib

/--
If p = 2^(2^k) + 1 is a Fermat prime, then 3 is a primitive root modulo p.
That is, the multiplicative order of 3 modulo p is p - 1 = 2^(2^k).
-/
theorem Ireland_Rosen_exercise_4_6 {k : ℕ} (hp : Prime (2 ^ (2 ^ k) + 1)) :
  orderOf (3 : ZMod (2 ^ (2 ^ k) + 1)) = 2 ^ (2 ^ k) := by sorry
