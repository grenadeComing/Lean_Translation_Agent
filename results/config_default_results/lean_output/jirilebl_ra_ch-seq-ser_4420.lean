import Mathlib

/-- Suppose ∑ x_n has bounded partial sums, μ_n → 0, and ∑ |μ_{n+1}-μ_n| converges. Then ∑ μ_n • x_n converges. -/
theorem summable_weighted_series_of_bounded_partial_sums_and_bv {E : Type _} [NormedAddCommGroup E] [NormedSpace ℝ E]
  {x : ℕ → E} {μ : ℕ → ℝ}
  (h_bound : ∃ C : ℝ, ∀ n, ‖(Finset.sum (Finset.range n) (fun i => x i))‖ ≤ C)
  (hμ : Filter.Tendsto μ (Filter.atTop : Filter ℕ) (nhds (0 : ℝ)))
  (h_var : Summable fun n => abs (μ (n+1) - μ n)) :
  Summable fun n => μ n • x n := by sorry
