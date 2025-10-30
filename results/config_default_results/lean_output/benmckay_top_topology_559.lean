import Mathlib.Topology.Basic

-- Let X be a topological space. Prove that a subset A ⊂ X is dense in X iff closure A equals X.
theorem benmckay_dense_iff_closure_eq_univ {X : Type*} [TopologicalSpace X] (A : Set X) :
  Dense A ↔ closure A = (Set.univ : Set X) := by
  sorry
