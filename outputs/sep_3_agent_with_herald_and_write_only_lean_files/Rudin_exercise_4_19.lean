import Mathlib

open Set

theorem Rudin_exercise_4_19 (f : ℝ → ℝ)
  (ivp : ∀ a b c, (min (f a) (f b) < c ∧ c < max (f a) (f b)) →
    ∃ x, min a b ≤ x ∧ x ≤ max a b ∧ f x = c)
  (hrat : ∀ (r : ℚ), IsClosed (f ⁻¹' ({r} : Set ℝ))) :
  Continuous f := by sorry
