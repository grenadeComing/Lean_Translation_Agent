import Mathlib

/-!
# Closure monotonicity

If A ⊆ B in a topological space, then closure A ⊆ closure B.
-/

theorem closure_subset_of_subset {X : Type _} [TopologicalSpace X] {A B : Set X} (h : A ⊆ B) :
  closure A ⊆ closure B := by sorry
