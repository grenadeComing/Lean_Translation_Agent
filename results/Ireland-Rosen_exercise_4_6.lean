import Mathlib

/-- If p = 2^(2^n) + 1 is a Fermat prime with n ≥ 1, then 3 is a primitive root modulo p. -/
theorem Ireland_Rosen_exercise_4_6 (n : ℕ) (hn : 1 ≤ n) (p : ℕ) (hp : p = 2 ^ (2 ^ n) + 1) (pp : p.Prime) :
  IsPrimitiveRoot (3 : ZMod p) (p - 1) := by sorry
