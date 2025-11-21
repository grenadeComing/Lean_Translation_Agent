import Mathlib.Data.Complex.Basic

-- Statements only, proofs omitted (end with := by sorry)

theorem abs_sinh_le_ext (z : Complex) : Complex.abs (Complex.sinh z) ≤ (1 : ℝ) / 2 * Real.exp (Complex.abs z) := by sorry

theorem abs_cosh_le_ext (z : Complex) : Complex.abs (Complex.cosh z) ≤ (1 : ℝ) / 2 * Real.exp (Complex.abs z) := by sorry
