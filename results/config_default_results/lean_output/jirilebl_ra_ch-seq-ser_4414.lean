import Mathlib

open scoped BigOperators

/-- Dirichlet-type variant: if partial sums S_N = ∑_{n=1}^N x_n are bounded and λ_n → 0 with summable total variation, then ∑ λ_n x_n converges. -/
theorem convergent_of_bounded_partial_sums_and_lambda
  {x : ℕ → ℝ}
  (hb : ∃ M : ℝ, ∀ N : ℕ, |Finset.sum (Finset.range N) (fun i => x (i+1))| ≤ M)
  (l : ℕ → ℝ)
  (hl_lim : Tendsto l atTop (𝓝 0))
  (hl_totvar : Summable (fun n => |l (n+1) - l n|))
  : Summable (fun n => l n * x n) := by
  sorry
