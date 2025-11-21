import Mathlib

/-
Bounds for complex sine and cosine.
For any z : ℂ, |sin z| ≤ 1/2 * exp |z| and |cos z| ≤ 1/2 * exp |z|.
-/

theorem abs_sin_bound (z : Complex) : Complex.abs (Complex.sin z) ≤ (1 / 2) * Real.exp (Complex.abs z) := by sorry

theorem abs_cos_bound (z : Complex) : Complex.abs (Complex.cos z) ≤ (1 / 2) * Real.exp (Complex.abs z) := by sorry
