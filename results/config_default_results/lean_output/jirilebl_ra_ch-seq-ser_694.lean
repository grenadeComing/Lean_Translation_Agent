import Mathlib

/-- Let (x_n) be a convergent monotone sequence of real numbers. Suppose there exists k : ℕ such that
    Tendsto x atTop (nhds (x k)). Show that x n = x k for all n ≥ k. -/
theorem monotone_tendsto_eq_of_eq_term (x : ℕ → ℝ) (k : ℕ) (hmono : Monotone x)
  (ht : Filter.Tendsto x Filter.atTop (nhds (x k))) : ∀ n, n ≥ k → x n = x k := by sorry
