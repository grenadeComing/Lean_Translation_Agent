import Mathlib

/-!
Simple statements: bounds for complex sinh and cosh in terms of exp |z|.
-/

theorem complex_abs_sinh_le_exp_div_two (z : ℂ) :
  Complex.abs (Complex.sinh z) ≤ (1 / 2 : ℝ) * Real.exp (Complex.abs z) := by
  sorry

theorem complex_abs_cosh_le_exp_div_two (z : ℂ) :
  Complex.abs (Complex.cosh z) ≤ (1 / 2 : ℝ) * Real.exp (Complex.abs z) := by
  sorry
