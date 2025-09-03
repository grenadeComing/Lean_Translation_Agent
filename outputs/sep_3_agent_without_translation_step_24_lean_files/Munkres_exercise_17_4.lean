import Mathlib

open Set

variable {X : Type _} [TopologicalSpace X]

/-- If U is open and A is closed in a topological space X, then U \ A is open. -/
lemma is_open_diff_of_is_open_is_closed {U A : Set X} (hU : IsOpen U) (hA : IsClosed A) :
  IsOpen (U \ A) := by sorry

/-- If U is open and A is closed in a topological space X, then A \ U is closed. -/
lemma is_closed_diff_of_is_open_is_closed {U A : Set X} (hU : IsOpen U) (hA : IsClosed A) :
  IsClosed (A \ U) := by sorry
