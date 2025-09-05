import Mathlib

/the-
Let z in complex. prove |sinh z| ≤ 1/2 e^{|z|} and |cosh z| ≤ 1/2 e^{|z|}.
*/

theorem abs_sinh_le_half_exp_abs (z : Complex) : Complex.abs (Complex.sinh z) ≤ (1 / 2) * Real.exp (Complex.abs z) := by sorry

theorem abs_cosh_le_half_exp_abs (z : Complex) : Complex.abs (Complex.cosh z) ≤ (1 / 2) * Real.exp (Complex.abs z) := by sorry
