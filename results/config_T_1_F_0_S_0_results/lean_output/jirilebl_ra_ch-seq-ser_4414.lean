import Mathlib

/-- Dirichlet-type test: If the sequence of partial sums of x : ℕ → ℝ is bounded,
and λ : ℕ → ℝ tends to 0 and has summable variation ∑ |λ_{n+1} - λ_n| < ∞,
then ∑ λ_n x_n converges. -/
theorem summable_of_bounded_partial_sums_and_summable_variation {x λ : ℕ → ℝ}
  (h_bdd : ∃ M, ∀ n, abs (∑ i in range (n + 1), x i) ≤ M)
  (h_lim : Tendsto λ atTop (𝓝 0))
  (h_var : Summable fun n => abs (λ (n + 1) - λ n)) :
  Summable fun n => λ n * x n := by sorry