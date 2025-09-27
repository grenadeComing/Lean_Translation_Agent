import Mathlib

open Set

variable {α : Type*} [TopologicalSpace α] [RegularSpace α]

theorem Munkres_exercise_31_1 (x y : α) (hxy : x ≠ y) :
  ∃ U V : Set α, IsOpen U ∧ IsOpen V ∧ x ∈ U ∧ y ∈ V ∧ (closure U ∩ closure V = ∅) := by sorry
