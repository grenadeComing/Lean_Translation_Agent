import Mathlib

theorem pugh_exercise_3_1 (f : ℝ → ℝ)
  (h : ∀ t x : ℝ, |f t - f x| ≤ |t - x| ^ 2) : ∃ c, ∀ x, f x = c := by sorry
