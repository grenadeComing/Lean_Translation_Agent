import Mathlib

open Set

theorem Munkres_exercise_33_8 {X : Type*} [TopologicalSpace X] [CompletelyRegularSpace X]
  {A B : Set X} (hA : IsCompact A) (hB : IsClosed B) (hdisj : Disjoint A B) :
  ∃ f : X → ℝ, Continuous f ∧ (f '' A = {0}) ∧ (f '' B = {1}) ∧ (∀ x, f x ∈ Icc (0 : ℝ) 1) := by sorry
