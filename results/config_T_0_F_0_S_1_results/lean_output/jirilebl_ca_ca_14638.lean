import Mathlib

/-!
Let z ∈ ℂ. Show that |tanh z| ≤ tanh |Re z|.
This file only states the lemma (no proof).
-/

theorem complex_abs_tanh_le_tanh_abs_re (z : ℂ) :
  Complex.abs (Complex.tanh z) ≤ Real.tanh (Real.abs z.re) := by sorry