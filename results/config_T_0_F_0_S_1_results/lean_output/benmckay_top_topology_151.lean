import Mathlib

variable {α : Type _} [TopologicalSpace α]

theorem closure_subset_of_subset {A B : Set α} (h : A ⊆ B) :
  closure A ⊆ closure B := by sorry