import Mathlib

/-!
Exercise: Let p be a prime of the form 4t + 3. Show that a is a primitive root modulo p iff -a has order (p - 1) / 2.
File: Ireland-Rosen_exercise_4_5.lean
-/

open ZMod

theorem ireland_rosen_exercise_4_5 {p : ℕ} (hp : p.Prime) (hmod4 : p % 4 = 3) {a : ZMod p}
  (ha : a ≠ 0) : IsPrimitiveRoot a (p - 1) ↔ IsPrimitiveRoot (-a) ((p - 1) / 2) := by
  sorry
