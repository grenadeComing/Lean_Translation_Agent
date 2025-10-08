import Mathlib

open Set

variable {X : Type _} [TopologicalSpace X] {A B : Set X}

/-- If A ⊆ B then closure A ⊆ closure B. -/
theorem closure_subset_of_subset (h : A ⊆ B) : closure A ⊆ closure B := by sorry
