import Mathlib

open Set

variable {X : Type _} [TopologicalSpace X]

theorem Munkres_exercise_17_4 (U A : Set X) (hU : IsOpen U) (hA : IsClosed A) : IsOpen (U \ A) ∧ IsClosed (A \ U) := by sorry
