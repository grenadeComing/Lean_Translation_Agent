import Mathlib

/- Dirichlet test for series with bounded partial sums and λ of bounded variation.
   If the partial sums of x are bounded, λ_n → 0, and the series of absolute
   differences ∑ |λ_{n+1}-λ_n| converges, then ∑ λ_n x_n converges. -/

theorem dirichlet_bounded_variation (x lambda_seq : ℕ → ℝ)
  (h_bound : ∃ M : ℝ, ∀ n : ℕ, abs (Finset.sum (Finset.range (n+1)) (fun i => x i)) ≤ M)
  (h_tendsto : ∀ ε > 0, ∃ N, ∀ n, n ≥ N → abs (lambda_seq n) ≤ ε)
  (hvar : Summable (fun n => abs (lambda_seq (n+1) - lambda_seq n))) :
  Summable (fun n => lambda_seq n * x n) := by sorry
