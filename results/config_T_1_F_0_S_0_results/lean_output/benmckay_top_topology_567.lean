import Mathlib

open Set

/-- Let X be a topological space and let A ⊂ X be any subset. 
Prove that the boundary of A equals the closures of A and X \ A intersected: ∂A = closure A ∩ closure (Aᶜ). -/
theorem boundary_eq_closure_inter_closure_compl {X : Type _} [TopologicalSpace X] (A : Set X) :
  frontier A = closure A ∩ closure (Aᶜ) := by sorry
