import Mathlib

lemma abs_sinh_cosh_bound (z : ℂ) :
  Complex.abs (Complex.sinh z) ≤ (1 / 2) * Real.exp (Complex.abs z) ∧
  Complex.abs (Complex.cosh z) ≤ (1 / 2) * Real.exp (Complex.abs z) := by
  sorry
