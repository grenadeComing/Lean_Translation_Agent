import Mathlib

/-- Given a real number `a`, we define a sequence by `x 0 = 1`, `x 1 = x 2 = a`, and
`x (n+1) = 2 * x n * x (n-1) - x (n-2)` for `n >= 2`.
Prove that if `x n = 0` for some `n`, then the sequence is periodic. -/

theorem periodic_of_zero_in_sequence (a : ℝ) (x : ℕ → ℝ)
  (h_init : x 0 = 1 ∧ x 1 = a ∧ x 2 = a)
  (h_rec : ∀ n, n ≥ 2 → x (n + 1) = 2 * x n * x (n - 1) - x (n - 2)) :
  (∃ n, x n = 0) → ∃ k, 0 < k ∧ ∀ m, x (m + k) = x m := by
  sorry
