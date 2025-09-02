import Mathlib

open Set

theorem Rudin_exercise_2_29 {s : Set ℝ} (hs : IsOpen s) :
  ∃ T : Set (Set ℝ),
    Countable T ∧
    (∀ I ∈ T, ∃ a b : ℝ, a < b ∧ I = Ioo a b) ∧
    (∀ A ∈ T, ∀ B ∈ T, A ≠ B → A ∩ B = ∅) ∧
    s = ⋃₀ T := by sorry
