import Mathlib

open BigOperators Filter

/--
Dirichlet-type test: if the sequence of partial sums of x is bounded, λ_n → 0,
and the series of absolute differences ∑ |λ_{n+1}-λ_n| is summable, then ∑ λ_n x_n is summable.
-/
theorem dirichlet_test {x λ : ℕ → ℝ}
  (h_bounded_partial : ∃ M, ∀ n, abs (∑ i in Finset.range (n+1), x i) ≤ M)
  (h_lambda_zero : Tendsto λ atTop (𝓝 0))
  (h_var : Summable fun n => abs (λ (n+1) - λ n)) :
  Summable fun n => λ n * x n := by sorry
