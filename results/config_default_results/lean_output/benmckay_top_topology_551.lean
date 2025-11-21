import Mathlib
open Set Filter Topology

/-- Let X be a topological space. Prove that for any subset A ⊂ X and open set U ⊂ X, we have closure (A ∩ U) ⊆ closure A ∩ U. -/
theorem closure_inter_open_subset_closure_inter_closure {X : Type*} [TopologicalSpace X] (A : Set X) (U : Set X) (hU : IsOpen U) : closure (A ∩ U) ⊆ closure A ∩ U := by sorry
