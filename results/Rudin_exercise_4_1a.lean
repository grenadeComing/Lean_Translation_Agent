import Mathlib

theorem Rudin_exercise_4_1a :
  ∃ f : ℝ → ℝ,
    (∀ x : ℝ, ∀ ε : ℝ, ε > 0 → ∃ δ : ℝ, δ > 0 ∧ ∀ h : ℝ, |h| < δ → |f (x + h) - f (x - h)| < ε)
    ∧ ¬ (∀ x : ℝ, ∀ ε : ℝ, ε > 0 → ∃ δ : ℝ, δ > 0 ∧ ∀ y : ℝ, |y - x| < δ → |f y - f x| < ε) := by
  -- Example: f(x) = 1 if x = 0, and 0 otherwise. Proof omitted.
  sorry