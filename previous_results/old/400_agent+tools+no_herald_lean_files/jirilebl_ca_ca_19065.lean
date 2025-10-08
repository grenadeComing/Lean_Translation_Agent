import Mathlib

/-!
Let z ∈ ℂ. Show that Complex.abs (Complex.cos z) ≥ Complex.abs (Complex.cos (z.re : Complex)).
This file states the theorem; the proof is omitted (sorry).
-/

theorem abs_cos_ge_abs_cos_re (z : Complex) :
  Complex.abs (Complex.cos z) ≥ Complex.abs (Complex.cos (z.re : Complex)) := by
  sorry
