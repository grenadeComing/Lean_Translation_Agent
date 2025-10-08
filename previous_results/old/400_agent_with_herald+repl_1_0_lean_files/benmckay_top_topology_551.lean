import Mathlib

open Set

variable {X : Type*} [TopologicalSpace X]

theorem closure_inter_subset_closure_inter_open {A U : Set X} (hU : IsOpen U) :
  closure (A ∩ U) ⊆ closure A ∩ U := by sorry
