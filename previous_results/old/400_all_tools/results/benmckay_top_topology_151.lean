import Mathlib
open Set

/-- Suppose A,B are subsets of a topological space X. Prove that if A ⊆ B, then closure A ⊆ closure B. -/
theorem closure_mono_ext {α : Type _} [TopologicalSpace α] {A B : Set α} (h : A ⊆ B) : closure A ⊆ closure B := by sorry
