import Mathlib

/-!
Statement: Let z ∈ ℂ. For all n ∈ ℕ,
  | ∑_{k=0}^n z^k / k! - exp z | ≤ |z|^{n+1} / (n+1)! * exp |z|.
This file contains only the statement (no proof).
-/

theorem complex_exp_partial_sum_error_bound (z : ℂ) (n : ℕ) :
  Complex.abs ((∑ k in Finset.range (n + 1), (z ^ k) / (k! : ℂ)) - Complex.exp z)
    ≤ (Complex.abs z) ^ (n + 1) / ((n + 1)! : ℝ) * Real.exp (Complex.abs z) := by sorry
