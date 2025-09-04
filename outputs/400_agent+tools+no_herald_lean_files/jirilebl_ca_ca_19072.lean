import Mathlib

/-!
Simple translation: definitions of cosh and sinh for complex numbers.
-/

theorem cosh_eq_exp (z : ℂ) : Complex.cosh z = (Complex.exp z + Complex.exp (-z)) / (2 : ℂ) := by
  sorry

theorem sinh_eq_exp (z : ℂ) : Complex.sinh z = (Complex.exp z - Complex.exp (-z)) / (2 : ℂ) := by
  sorry
