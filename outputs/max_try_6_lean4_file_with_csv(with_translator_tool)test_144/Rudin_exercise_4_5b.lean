import Mathlib

/-- Rudin exercise 4.5(b): There exists E ⊂ ℝ and a continuous f : E → ℝ which cannot be
    extended to a continuous g : ℝ → ℝ. -/

theorem Rudin_exercise_4_5b :
  ∃ (E : Set ℝ) (f : Subtype E → ℝ),
    Continuous f ∧ ¬ ∃ g : ℝ → ℝ, Continuous g ∧ ∀ x : Subtype E, g x = f x := by
  sorry
