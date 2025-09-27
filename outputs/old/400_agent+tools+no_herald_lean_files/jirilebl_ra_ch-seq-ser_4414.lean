import Mathlib

open Filter

theorem dirichlet_bv_of_bounded_partial_sums {x : ℕ → ℝ} {a : ℕ → ℝ}
  (h_bdd : ∃ C : ℝ, ∀ N, |(Finset.sum (Finset.range (N+1)) (fun i => x i))| ≤ C)
  (h_lim : Filter.Tendsto (fun n => a n) Filter.atTop (nhds (0 : ℝ)))
  (h_var : Summable fun n => |a (n+1) - a n|) :
  Summable fun n => a n * x n := by
  sorry
