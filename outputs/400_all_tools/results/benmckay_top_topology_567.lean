import Mathlib

open Set Filter Topology

/-- Let X be a topological space and let A ⊆ X. Prove that the boundary of A equals the
    intersection of the closures of A and X \ A: frontier A = closure A ∩ closure (X \ A). -/
theorem frontier_eq_closure_inter_closure_compl {X : Type _} [TopologicalSpace X] (A : Set X) :
    frontier A = closure A ∩ closure Aᶜ := by sorry
