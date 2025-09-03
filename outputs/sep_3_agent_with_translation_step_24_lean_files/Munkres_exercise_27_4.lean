import Mathlib

/-!
Munkres, Topology, Chapter 27, Exercise 4 (informal):
A connected metric space with more than one point is uncountable.
We state the result here for a metric space as a type with a MetricSpace
instance and a connected topology. The proof is omitted (``by sorry'').
-/

theorem Munkres_exercise_27_4 {α : Type u} [MetricSpace α] [TopologicalSpace α] [ConnectedSpace α]
  (h : ∃ x y : α, x ≠ y) : ¬Countable α := by sorry
