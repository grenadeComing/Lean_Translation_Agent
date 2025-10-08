import Mathlib

theorem Rudin_exercise_4_8a {E : Set ℝ} {f : ℝ → ℝ}
  (hE : ∃ R : ℝ, ∀ x, x ∈ E → |x| ≤ R)
  (hcont : UniformContinuousOn f E) :
  ∃ M : ℝ, ∀ y, y ∈ f '' E → |y| ≤ M := by
  sorry
