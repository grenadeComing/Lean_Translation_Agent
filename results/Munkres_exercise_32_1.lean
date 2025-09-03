import Mathlib

open Topology Set

/-- A closed subspace of a normal space is normal. -/
theorem Munkres_exercise_32_1 {X : Type*} [TopologicalSpace X] (A : Set X)
  (hX : NormalSpace X) (hA : IsClosed A) : NormalSpace A := by
  sorry
