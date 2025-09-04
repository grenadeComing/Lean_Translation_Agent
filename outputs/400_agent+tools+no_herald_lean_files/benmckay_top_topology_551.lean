import Mathlib

open Set

variable {X : Type _} [TopologicalSpace X]

/-- Let X be a topological space. For any subset A ⊆ X and open set U ⊆ X,
we have closure (A ∩ U) ⊆ closure A ∩ U. -/
theorem closure_inter_subset_closure_inter_of_open (A U : Set X) (hU : IsOpen U) :
  closure (A ∩ U) ⊆ closure A ∩ U := by
  -- proof omitted
  sorry
