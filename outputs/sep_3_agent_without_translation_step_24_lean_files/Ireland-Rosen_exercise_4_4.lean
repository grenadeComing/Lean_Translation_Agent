import Mathlib

/-- Exercise 4.4 (Ireland & Rosen):
For a prime p of the form 4t + 1, a is a primitive root modulo p iff -a is a primitive root modulo p. -/
theorem Ireland_Rosen_exercise_4_4 (p : ℕ) (hp : p.Prime) (hmod4 : p % 4 = 1) (a : ZMod p) :
  IsPrimitiveRoot a (p - 1) ↔ IsPrimitiveRoot (-a) (p - 1) := by
  sorry
