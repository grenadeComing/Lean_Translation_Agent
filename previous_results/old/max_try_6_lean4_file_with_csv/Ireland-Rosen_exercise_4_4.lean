import Mathlib

/-- Exercise: Let p be a prime of the form 4*t + 1. For a in ZMod p, show that a is a primitive
root modulo p iff -a is a primitive root modulo p. -/
theorem ireland_rosen_exercise_4_4 (p t : ℕ) (hp : p = 4 * t + 1) (pp : p.Prime) (a : ZMod p) :
  IsPrimitiveRoot a (p - 1) ↔ IsPrimitiveRoot (-a) (p - 1) := by sorry
