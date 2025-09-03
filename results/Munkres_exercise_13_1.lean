import Mathlib

/-- Munkres, Exercise 13.1:
Let X be a topological space; let A be a subset of X. Suppose that for each x ∈ A there is an open set U
containing x such that U ⊆ A. Then A is open in X. -/
theorem Munkres_exercise_13_1 {X : Type*} [TopologicalSpace X] {A : Set X}
  (h : ∀ x ∈ A, ∃ U : Set X, IsOpen U ∧ x ∈ U ∧ U ⊆ A) : IsOpen A := by
  sorry
