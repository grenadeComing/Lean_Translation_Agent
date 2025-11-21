import Mathlib

open Set Filter Topology

variable {X : Type*} [TopologicalSpace X]

/-- Let X be a topological space and A ⊆ X. Prove that A is dense in X if and only if the closure of A is equal to X. -/
theorem dense_iff_closure_eq_univ (A : Set X) : Dense A ↔ closure A = univ := by sorry
