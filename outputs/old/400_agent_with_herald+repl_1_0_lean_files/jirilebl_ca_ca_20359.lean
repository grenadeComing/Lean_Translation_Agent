import Mathlib

/-!
# Bounds on complex sine and cosine

We state the (possibly incorrect) inequalities
  |sin z| ≤ 1/2 * exp |z|,  |cos z| ≤ 1/2 * exp |z|
for z : Complex. These are left as sorry proofs per the task instructions.
-/

open Complex

theorem abs_sin_le_half_exp (z : Complex) : Complex.abs (Complex.sin z) ≤ (1 / 2 : ℝ) * Real.exp (Complex.abs z) := by sorry

theorem abs_cos_le_half_exp (z : Complex) : Complex.abs (Complex.cos z) ≤ (1 / 2 : ℝ) * Real.exp (Complex.abs z) := by sorry
