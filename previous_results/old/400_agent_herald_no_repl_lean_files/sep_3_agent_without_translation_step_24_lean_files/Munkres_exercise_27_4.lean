import Mathlib

/-!
# Munkres Exercise 27.4

A connected metric space having more than one point is uncountable.
-/

theorem Munkres_exercise_27_4 {α : Type*} [MetricSpace α] [ConnectedSpace α] (h : ∃ x y : α, x ≠ y) : ¬ Countable α := by
  sorry
