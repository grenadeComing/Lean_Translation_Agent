import Mathlib

/-- If x_n → l and y_n = min (x_n) 0, then y_n → min l 0 and in particular the limit is ≤ 0. -/
theorem seq_min_limit_nonpos {x : ℕ → ℝ} {l : ℝ}
  (h : ∀ ε > 0, ∃ N : ℕ, ∀ n ≥ N, |x n - l| < ε) :
  (∀ ε > 0, ∃ N : ℕ, ∀ n ≥ N, |min (x n) 0 - min l 0| < ε) ∧ min l 0 ≤ 0 := by
  sorry
