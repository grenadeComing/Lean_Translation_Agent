import Mathlib

variable {X : Type _} [TopologicalSpace X]

/-- For any subset A of a topological space X, A is contained in its closure. -/
theorem subset_closure (A : Set X) : A ⊆ Set.closure A := by sorry