import Mathlib

/-- Let (x_n) be a convergent monotone sequence. Suppose there exists k such that
    lim_{n→∞} x_n = x_k. Then x_n = x_k for all n ≥ k. -/
theorem monotone_seq_eventually_const_of_tendsto_eq_term
  {α : Type*} [LinearOrder α] [TopologicalSpace α] [OrderTopology α]
  {x : ℕ → α} {k : ℕ}
  (hmono : Monotone x ∨ Antitone x)
  (hlim : Tendsto x atTop (𝓝 (x k))) :
  ∀ n, n ≥ k → x n = x k := by sorry
