import Mathlib

/-- Consider a prime p of the form 4*t + 3. Show that a is a primitive root modulo p iff -a has order (p-1)/2. -/
theorem Ireland_Rosen_exercise_4_5 {p : ℕ} [Fact p.Prime] {a : ZMod p} (hp4 : p % 4 = 3) :
  IsPrimitiveRoot a (p - 1) ↔ orderOf (-a) = (p - 1) / 2 := by sorry
