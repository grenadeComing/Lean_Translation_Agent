import Mathlib

/-!
Let z ∈ ℂ. Prove that |sinh z| ≤ 1/2 * exp |z| and |cosh z| ≤ 1/2 * exp |z|.
-/

theorem abs_sinh_le_half_exp (z : ℂ) : Complex.abs (Complex.sinh z) ≤ (1 / 2 : ℝ) * Real.exp (Complex.abs z) := by sorry

theorem abs_cosh_le_half_exp (z : ℂ) : Complex.abs (Complex.cosh z) ≤ (1 / 2 : ℝ) * Real.exp (Complex.abs z) := by sorry
