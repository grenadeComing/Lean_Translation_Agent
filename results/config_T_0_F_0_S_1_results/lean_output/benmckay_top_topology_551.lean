import Mathlib

variable {X : Type*} [TopologicalSpace X] {A U : Set X}

/-- If U is open, then closure A ∩ U ⊆ closure (A ∩ U).  Note: the original requested statement
    ¯(A ∩ U) ⊆ ¯A ∩ U is false in general (counterexamples exist). -/
theorem closure_inter_subset_of_is_open (hU : IsOpen U) : closure A ∩ U ⊆ closure (A ∩ U) := by sorry
