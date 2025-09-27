import Mathlib

open Filter

theorem dirichlet_test_bounded_partial_sums {x lam : ℕ → ℝ}
  (h_bdd : ∃ M : ℝ, ∀ n, abs (Finset.sum (Finset.range (n + 1)) x) ≤ M)
  (h_lam_zero : Tendsto lam atTop (nhds 0))
  (h_var : Summable fun n => abs (lam (n + 1) - lam n)) :
  Summable fun n => lam n * x n := by sorry
