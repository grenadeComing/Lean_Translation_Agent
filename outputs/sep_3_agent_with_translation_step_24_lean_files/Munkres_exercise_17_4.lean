import Mathlib

variable {X : Type _} [TopologicalSpace X]

/-- If U is open and A is closed then U \ A is open. -/
theorem Munkres_exercise_17_4_open_diff {U A : Set X} (hU : IsOpen U) (hA : IsClosed A) :
  IsOpen (U \ A) := by
  sorry

/-- If U is open and A is closed then A \ U is closed. -/
theorem Munkres_exercise_17_4_closed_diff {U A : Set X} (hU : IsOpen U) (hA : IsClosed A) :
  IsClosed (A \ U) := by
  sorry
