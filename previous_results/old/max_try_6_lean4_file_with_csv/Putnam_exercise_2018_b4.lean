import Mathlib

variable {a : ℝ} {x : ℕ → ℝ}

/-- Putnam 2018 B4: If a sequence (x_n) of real numbers satisfies x_0 = 1, x_1 = x_2 = a,
    and x_{n+1} = 2 x_n x_{n-1} - x_{n-2} for n ≥ 2, then if x_n = 0 for some n the sequence is periodic. -/
theorem Putnam_exercise_2018_b4
  (h0 : x 0 = 1)
  (h1 : x 1 = a)
  (h2 : x 2 = a)
  (hrecur : ∀ n, 2 ≤ n → x (n+1) = 2 * x n * x (n-1) - x (n-2))
  (hex : ∃ n, x n = 0) : ∃ p : ℕ, p > 0 ∧ ∀ m, x (m + p) = x m := by sorry
