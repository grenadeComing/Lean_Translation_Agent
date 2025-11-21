import Mathlib

open Set

variable {α : Type _} [TopologicalSpace α]

/-- If A is a subset of a topological space α, then A is contained in its closure. -/
theorem subset_closure (A : Set α) : A ⊆ closure A := by sorry