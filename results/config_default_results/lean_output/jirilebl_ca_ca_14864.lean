import Mathlib

/-!
Bounds on the complex sine and cosine.
-/

theorem complex_abs_sin_le (z : ℂ) : Complex.abs (Complex.sin z) ≤ Real.exp (Complex.abs z) / 2 := by sorry

theorem complex_abs_cos_le (z : ℂ) : Complex.abs (Complex.cos z) ≤ Real.exp (Complex.abs z) / 2 := by sorry
