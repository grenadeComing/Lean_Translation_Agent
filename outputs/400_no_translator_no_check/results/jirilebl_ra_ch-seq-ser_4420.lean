import Mathlib

open BigOperators Finset Filter

theorem dirichlet_test_series {x a : ℕ → ℝ}
  (h_bdd : ∃ M, ∀ n, |Finset.sum (range (n + 1)) (fun i => x i)| ≤ M)
  (h_a : Tendsto a atTop (nhds (0 : ℝ)))
  (h_diff : Summable fun n => |a (n + 1) - a n|) :
  Summable fun n => a n * x n := by sorry
