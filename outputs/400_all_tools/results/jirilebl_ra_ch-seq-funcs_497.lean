import Mathlib

open Set

/-- The sequence of partial sums of the geometric series does not converge uniformly on (-1,1). -/
theorem geometric_series_not_uniform_on :
  ¬ (∀ ε : ℝ, ε > 0 → ∃ N : ℕ, ∀ n : ℕ, n ≥ N → ∀ x ∈ Ioo (-1 : ℝ) 1,
    abs ((Finset.sum (Finset.range (n+1)) fun k => x ^ k) - 1 / (1 - x)) ≤ ε) := by sorry
