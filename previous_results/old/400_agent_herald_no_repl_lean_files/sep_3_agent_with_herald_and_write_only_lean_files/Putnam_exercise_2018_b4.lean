import Mathlib

/-
  Putnam 2018 B4 (translation):
  Given a real number a, define a sequence x : ℕ → ℝ by
    x 0 = 1, x 1 = x 2 = a,
    x (n+1) = 2 * x n * x (n-1) - x (n-2) for n ≥ 2.
  If x n = 0 for some n, then the sequence is periodic.
-/

theorem putnam_exercise_2018_b4 {a : ℝ} {x : ℕ → ℝ}
  (h0 : x 0 = 1) (h1 : x 1 = a) (h2 : x 2 = a)
  (hrec : ∀ n, n ≥ 2 → x (n+1) = 2 * x n * x (n-1) - x (n-2)) :
  (∃ n, x n = 0) → ∃ p : ℕ, p > 0 ∧ ∀ m, x (m + p) = x m := by sorry
