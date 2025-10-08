import Mathlib

/-- If R is an integral domain and x^2 = 1 for some x ∈ R then x = ±1. -/
theorem Dummit_Foote_exercise_7_1_11 {R : Type _} [Ring R] [IsDomain R] {x : R} (h : x * x = 1) : x = 1 ∨ x = -1 := by sorry
