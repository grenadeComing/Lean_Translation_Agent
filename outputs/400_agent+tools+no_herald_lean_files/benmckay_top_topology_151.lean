import Mathlib

open Set

/-!
Suppose A, B are subsets of a topological space X. Prove that if A ⊆ B, then closure A ⊆ closure B.
-/

theorem closure_mono_of_subset {X : Type _} [TopologicalSpace X] {A B : Set X} (h : A ⊆ B) :
  closure A ⊆ closure B := by sorry
