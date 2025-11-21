import Mathlib

theorem complex_cosh_sinh_exp (z : ℂ) :
  Complex.cosh z = (Complex.exp z + Complex.exp (-z)) / (2 : ℂ) ∧
  Complex.sinh z = (Complex.exp z - Complex.exp (-z)) / (2 : ℂ) := by sorry
