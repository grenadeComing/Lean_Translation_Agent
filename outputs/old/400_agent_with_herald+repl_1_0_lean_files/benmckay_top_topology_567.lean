import Mathlib.Topology.Basic

open Set

/-- The boundary (frontier) of A equals closure A ∩ closure (X \ A). -/
theorem frontier_eq_closure_inter_closure_compl {X : Type _} [TopologicalSpace X] (A : Set X) :
  frontier A = closure A ∩ closure (X \ A) := by sorry
