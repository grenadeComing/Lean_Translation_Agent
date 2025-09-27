import Mathlib

open Complex

/-- For any complex z, |exp z| = exp (re z). -/
theorem complex_abs_exp_eq_exp_re (z : ℂ) : Complex.abs (Complex.exp z) = Real.exp (Complex.re z) := by
  sorry
