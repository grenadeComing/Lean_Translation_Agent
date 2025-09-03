import Mathlib

/-!
# Putnam 2018 B4 — Lean4 statement
Given a real number `a`, we define a sequence by `x 0 = 1`, `x 1 = x 2 = a`, and
`x (n+1) = 2 * x n * x (n-1) - x (n-2)` for `n ≥ 2`.

We state the conclusion: if `x n = 0` for some `n`, then the sequence is periodic.
-/

theorem Putnam_exercise_2018_b4 (a : ℝ) (x : ℕ → ℝ)
  (h0 : x 0 = 1) (h1 : x 1 = a) (h2 : x 2 = a)
  (hrecur : ∀ n : ℕ, 2 ≤ n → x (n+1) = 2 * x n * x (n-1) - x (n-2))
  (hex : ∃ n, x n = 0) :
  ∃ p : ℕ, p > 0 ∧ ∀ n, x (n+p) = x n := by
  sorry
