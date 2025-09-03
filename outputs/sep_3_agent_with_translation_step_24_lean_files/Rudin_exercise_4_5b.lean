import Mathlib

open Set

theorem Rudin_exercise_4_5b : ∃ (E : Set ℝ) (f : ℝ → ℝ),
  ContinuousOn f E ∧ ∀ g : ℝ → ℝ, Continuous g → ∃ x ∈ E, g x ≠ f x := by sorry
