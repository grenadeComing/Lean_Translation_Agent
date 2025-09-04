import Mathlib

open BigOperators Filter

theorem dirichlet_test_bounded_partial_sums (x seq : ℕ → ℝ)
  (h_bound : ∃ M:ℝ, ∀ n, |(Finset.range (n+1)).sum (fun i => x i)| ≤ M)
  (hseq : Tendsto seq atTop (nhds (0 : ℝ)))
  (hvar : Summable fun n => |seq (n+1) - seq n|) :
  Summable fun n => seq n * x n := by
  sorry
