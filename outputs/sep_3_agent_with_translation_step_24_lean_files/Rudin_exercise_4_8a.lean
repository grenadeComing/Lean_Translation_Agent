import Mathlib

open Set

theorem Rudin_exercise_4_8a {f : ℝ → ℝ} {E : Set ℝ} (huc : UniformContinuousOn f E)
  (hE : ∃ M : ℝ, 0 ≤ M ∧ ∀ x ∈ E, |x| ≤ M) : ∃ N : ℝ, 0 ≤ N ∧ ∀ x ∈ E, |f x| ≤ N := by sorry
