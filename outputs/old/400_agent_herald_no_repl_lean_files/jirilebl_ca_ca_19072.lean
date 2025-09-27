import Mathlib

/-!
Simple translation: expressions for complex hyperbolic cosine and sine in terms of the complex exponential.
-/-

theorem complex_cosh_exp (z : ℂ) : cosh z = (exp z + exp (-z)) / (2 : ℂ) := by sorry

theorem complex_sinh_exp (z : ℂ) : sinh z = (exp z - exp (-z)) / (2 : ℂ) := by sorry
