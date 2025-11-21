import Mathlib

/-- Let (x_n) be a convergent real sequence with limit a, and define y_n = max(x_n, 0).
    Then y_n → max(a,0) and in particular lim_{n→∞} y_n ≥ 0. -/
theorem seq_max_nonneg_of_tendsto {x : ℕ → ℝ} {a : ℝ}
  (h : ∀ ε > (0 : ℝ), ∃ N : ℕ, ∀ n, n ≥ N → abs (x n - a) < ε) :
  (∀ ε > (0 : ℝ), ∃ N : ℕ, ∀ n, n ≥ N → abs (max (x n) (0 : ℝ) - max a (0 : ℝ)) < ε) ∧ 0 ≤ max a (0 : ℝ) := by sorry
