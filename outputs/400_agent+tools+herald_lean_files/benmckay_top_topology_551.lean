import Mathlib

variable {X : Type*} [TopologicalSpace X] (A U : Set X)

/-- Correct general inclusion: closure (A ∩ U) ⊆ closure A ∩ closure U. -/
theorem closure_inter_subset_closure_inter_closure : closure (A ∩ U) ⊆ closure A ∩ closure U := by sorry

/-- If U is closed, then closure (A ∩ U) ⊆ closure A ∩ U. -/
theorem closure_inter_subset_closure_inter_of_closed (hU : IsClosed (U : Set X)) : closure (A ∩ U) ⊆ closure A ∩ U := by sorry
