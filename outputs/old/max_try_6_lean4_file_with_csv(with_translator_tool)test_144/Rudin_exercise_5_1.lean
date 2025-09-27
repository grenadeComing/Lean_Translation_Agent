import Mathlib

/-- Rudin exercise: If f : ℝ → ℝ satisfies |f x - f y| ≤ (x - y)^2 for all x,y, then f is constant. -/
theorem Rudin_exercise_5_1 (f : ℝ → ℝ) (h : ∀ x y : ℝ, |f x - f y| ≤ (x - y)^2) : ∀ x y : ℝ, f x = f y := by
  sorry
