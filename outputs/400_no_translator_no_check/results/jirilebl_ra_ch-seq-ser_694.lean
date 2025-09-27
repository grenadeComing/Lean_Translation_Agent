import Mathlib

open Filter

/-- Let (x_n) be a convergent monotone sequence. Suppose there exists k such that
    lim_{n→∞} x_n = x_k. Then x_n = x_k for all n ≥ k. -/
theorem monotone_or_antitone_convergent_const_of_limit_eq {x : ℕ → ℝ} (k : ℕ)
  (hmono : Monotone x ∨ Antitone x)
  (hconv : Tendsto x atTop (nhds (x k))) : ∀ n, n ≥ k → x n = x k := by
  sorry
