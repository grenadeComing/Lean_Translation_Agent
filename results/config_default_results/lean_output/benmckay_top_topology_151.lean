import Mathlib

/-- Suppose A,B are subsets of a topological space X. Prove that if A ⊆ B, then closure A ⊆ closure B. -/
theorem benmckay_closure_mono {X : Type*} [TopologicalSpace X] {A B : Set X} (h : A ⊆ B) : closure A ⊆ closure B := by sorry
