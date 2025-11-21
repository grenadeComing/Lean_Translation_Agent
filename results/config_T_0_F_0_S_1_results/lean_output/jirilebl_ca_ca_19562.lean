import Mathlib

open Complex

theorem jirilebl_ca_ca_19562 (z : ℂ) : ∀ n : ℕ,
  Complex.abs ((∑ k in Finset.range (n+1), z ^ k / (k! : ℂ)) - Complex.exp z)
    ≤ (Complex.abs z) ^ (n+1) / ((n+1)! : ℝ) * Real.exp (Complex.abs z) := by sorry
