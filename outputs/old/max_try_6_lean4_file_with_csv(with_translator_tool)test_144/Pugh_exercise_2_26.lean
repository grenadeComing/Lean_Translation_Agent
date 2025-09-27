import Mathlib

open Set

variable {α : Type _} [TopologicalSpace α]

/-- Pugh, Exercise 2.26: A set U is open iff none of its points are limit points of its complement. -/
theorem Pugh_exercise_2_26 (U : Set α) : IsOpen U ↔ ∀ x, x ∈ U → x ∉ closure (Uᶜ) := by
  sorry
