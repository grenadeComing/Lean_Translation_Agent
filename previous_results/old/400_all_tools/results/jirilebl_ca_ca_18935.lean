import Mathlib

/-!
Simple bounds for complex hyperbolic sine and cosine.
We state the lemmas ending with `:= by sorry` as requested.
-/

theorem abs_sinh_le_exp_half (z : ℂ) : Complex.abs (Complex.sinh z) ≤ (1 / 2) * Real.exp (Complex.abs z) := by sorry

theorem abs_cosh_le_exp_half (z : ℂ) : Complex.abs (Complex.cosh z) ≤ (1 / 2) * Real.exp (Complex.abs z) := by sorry
