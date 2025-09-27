import Mathlib

open Set

theorem Rudin_exercise_2_29 (s : Set ℝ) (hs : IsOpen s) :
  ∃ I : Set (Set ℝ),
    Countable I ∧ (∀ a b, a ∈ I → b ∈ I → a ≠ b → a ∩ b = ∅) ∧ (Set.sUnion I = s) := by sorry
