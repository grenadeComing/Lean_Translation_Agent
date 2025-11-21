import Mathlib

open Set

variable {X : Type _} [TopologicalSpace X]

/-- The boundary (frontier) of A equals closure A ∩ closure (Aᶜ). -/
theorem frontier_eq_closure_inter_closure_compl (A : Set X) : frontier A = closure A ∩ closure (Aᶜ) := by sorry
