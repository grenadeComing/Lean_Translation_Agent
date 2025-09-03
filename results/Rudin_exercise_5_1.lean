import Mathlib

theorem Rudin_exercise_5_1 (f : Real → Real)
  (h : ∀ x y : Real, abs (f x - f y) ≤ (x - y) ^ 2) : ∃ c : Real, ∀ x : Real, f x = c := by sorry
