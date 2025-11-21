import Mathlib
open Set

/-- Suppose A and B are subsets of a topological space X. Prove that if A ⊆ B, then closure A ⊆ closure B. -/
theorem closure_mono {X : Type*} [TopologicalSpace X] {A B : Set X} (h : A ⊆ B) :
  closure A ⊆ closure B := by sorry