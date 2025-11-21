import Mathlib

/-!
Dirichlet-type test for series (statement only, no proof):
If the sequence of partial sums of \sum_{n=1}^\infty x_n is bounded, and lambda_n -> 0
and \sum |lambda_{n+1}-lambda_n| converges, then \sum lambda_n x_n converges.
-/

theorem dirichlet_test_bounded_partial_sums {x lambda : ℕ → ℝ}
  (h_partial_bdd : ∃ M, ∀ n, |(Finset.range n).sum (fun i => x (i+1))| ≤ M)
  (h_lambda_tendsto_zero : ∀ ε > 0, ∃ N, ∀ n, n ≥ N → |lambda n| ≤ ε)
  (h_lambda_bv : Summable (fun n => |lambda (n+1) - lambda n|)) :
  Summable (fun n => lambda n * x n) := by sorry
