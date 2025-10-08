import Mathlib

theorem complex_arg_exp (z : ℂ) : Complex.arg (Complex.exp z) = z.im := by sorry

theorem complex_abs_exp (z : ℂ) : Complex.abs (Complex.exp z) = Real.exp z.re := by sorry
