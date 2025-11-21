import Mathlib

open Finset

theorem dirichlet_test_series {a x : ℕ → ℝ}
  (h_bounded_part_sums : ∃ M, ∀ n, Real.abs (∑ i in range n, x i) ≤ M)
  (h_a_tends_to_zero : ∀ ε > 0, ∃ N, ∀ n ≥ N, Real.abs (a n) ≤ ε)
  (h_variation_summable : Summable fun n => Real.abs (a (n+1) - a n)) :
  Summable fun n => a n * x n := by sorry