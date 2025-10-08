import Mathlib

/-- Let (x_n) be a convergent monotone sequence of real numbers. Suppose there exists k : ℕ
such that lim_{n→∞} x_n = x_k. Show that x_n = x_k for all n ≥ k. -/
theorem monotone_tendsto_eq_eventually_const (x : ℕ → ℝ) (k : ℕ) (hx : Monotone x)
  (h : Tendsto x atTop (𝓝 (x k))) : ∀ n, n ≥ k → x n = x k := by sorry
