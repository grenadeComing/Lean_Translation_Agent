import Mathlib

open Finset Filter

theorem dirichlet_test_bounded_partial_sums {x λ : ℕ → ℝ}
  (h_bounded : ∃ M : ℝ, ∀ n : ℕ, abs (∑ i in range n, x (i + 1)) ≤ M)
  (hλ_zero : Tendsto λ atTop (𝓝 0))
  (h_var : Summable (fun n => abs (λ (n + 1) - λ n))) :
  Summable (fun n => λ n * x n) := by sorry