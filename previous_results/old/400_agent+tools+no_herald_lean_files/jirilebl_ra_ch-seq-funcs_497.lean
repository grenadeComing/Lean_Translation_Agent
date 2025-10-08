import Mathlib

open Set

theorem geometric_series_not_uniform_on_Ioo :
  ∃ ε : ℝ, 0 < ε ∧ ∀ N : ℕ, ∃ n : ℕ, N ≤ n ∧ ∃ x : ℝ, x ∈ Set.Ioo (-1 : ℝ) (1 : ℝ) ∧
    abs ((Finset.sum (Finset.range (n+1)) fun k => x ^ k) - (1 / (1 - x))) ≥ ε := by
  sorry
