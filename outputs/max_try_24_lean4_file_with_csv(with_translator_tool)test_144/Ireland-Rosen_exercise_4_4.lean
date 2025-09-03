import Mathlib

/-- Exercise: Let p be a prime with p % 4 = 1. For a : ZMod p, a is a primitive root modulo p iff -a is a primitive root modulo p. -/
theorem ireland_rosen_exercise_4_4 {p : ℕ} (hp : p.Prime) (hmod : p % 4 = 1) (a : ZMod p) :
  IsPrimitiveRoot a (p - 1) ↔ IsPrimitiveRoot (-a) (p - 1) := by sorry
