import Mathlib

theorem bounded_partial_sums_bv_weights_summable (x lambda : ℕ → ℝ) :
  (∃ M : ℝ, ∀ N : ℕ, abs (Finset.sum (Finset.range N) fun k => x (k + 1)) ≤ M) ->
  (∀ ε > 0, ∃ N, ∀ n ≥ N, abs (lambda n) < ε) ->
  Summable (fun n => abs (lambda (n + 1) - lambda n)) ->
  Summable (fun n => lambda n * x n) := by sorry
