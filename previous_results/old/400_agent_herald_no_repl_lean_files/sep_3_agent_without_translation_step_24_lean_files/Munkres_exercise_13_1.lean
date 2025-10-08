import Mathlib

open Set

variable {X : Type*} [TopologicalSpace X]

theorem Munkres_exercise_13_1 (A : Set X)
  (h : ∀ x ∈ A, ∃ U, IsOpen U ∧ x ∈ U ∧ U ⊆ A) : IsOpen A := by sorry
