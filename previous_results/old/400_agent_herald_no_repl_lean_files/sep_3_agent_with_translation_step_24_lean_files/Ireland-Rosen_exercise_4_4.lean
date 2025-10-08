import Mathlib

/-- Let p be a prime of the form 4*t + 1. For a : ZMod p, a is a primitive root modulo p iff -a is a primitive root modulo p. -/
theorem ireland_rosen_exercise_4_4 {p : ℕ} (hp : p.Prime) (h4 : p % 4 = 1) {a : ZMod p} :
  IsPrimitiveRoot a (p - 1) ↔ IsPrimitiveRoot (-a) (p - 1) := by sorry
