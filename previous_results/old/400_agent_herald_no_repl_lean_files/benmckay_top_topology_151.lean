import Mathlib

/-- If A ⊆ B in a topological space X, then closure A ⊆ closure B. -/
theorem closure_mono {X : Type _} [TopologicalSpace X] {A B : Set X} (h : A ⊆ B) : closure A ⊆ closure B := by sorry
