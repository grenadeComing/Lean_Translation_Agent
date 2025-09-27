import Mathlib

open Complex

theorem sum_abs_geometric (z : ℂ) (hz : Complex.abs z < 1) :
  ∑' n : ℕ, (Complex.abs z)^(n+1) = Complex.abs z / (1 - Complex.abs z) := by
  sorry
