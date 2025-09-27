import Mathlib

variable {x : ℕ → ℝ} {l : ℝ}

/-- Express convergence in epsilon-N form: if x_n → l then min(x_n,0) → min(l,0). -/
theorem tendsto_min_of_tendsto (h : ∀ ε > 0, ∃ N : ℕ, ∀ n ≥ N, |x n - l| < ε) :
  ∀ ε > 0, ∃ N : ℕ, ∀ n ≥ N, |min (x n) 0 - min l 0| < ε := by sorry

/-- In particular, the limit of y_n = min(x_n,0) is ≤ 0. -/
theorem limit_min_nonpos (h : ∀ ε > 0, ∃ N : ℕ, ∀ n ≥ N, |x n - l| < ε) :
  min l 0 ≤ 0 := by sorry
