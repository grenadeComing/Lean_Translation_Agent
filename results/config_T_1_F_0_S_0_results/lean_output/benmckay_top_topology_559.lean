import Mathlib

/-- Let X be a topological space. A subset A ⊂ X is dense in X iff closure A = X. -/
theorem dense_iff_closure_eq {α : Type _} [TopologicalSpace α] (A : Set α) :
  Dense A ↔ closure A = (univ : Set α) := by sorry