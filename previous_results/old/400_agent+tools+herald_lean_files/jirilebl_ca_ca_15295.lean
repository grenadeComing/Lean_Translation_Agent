import Mathlib

/-!
Basic bounds for hyperbolic sine and cosine over the complex numbers.
-/

open Complex

theorem abs_sinh_le (z : ℂ) : Complex.abs (sinh z) ≤ (1 / 2 : ℝ) * Real.exp (Complex.abs z) := by sorry

theorem abs_cosh_le (z : ℂ) : Complex.abs (cosh z) ≤ (1 / 2 : ℝ) * Real.exp (Complex.abs z) := by sorry
