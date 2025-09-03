import Mathlib

/-!
Munkres exercise 32.1: A closed subspace of a normal space is normal.
-/

theorem closed_subspace_of_normal {X : Type*} [TopologicalSpace X] [NormalSpace X]
  {s : Set X} (hs : IsClosed s) : NormalSpace (Subtype s) := by sorry
