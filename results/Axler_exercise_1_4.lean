import Mathlib

variable {F : Type _} [Field F]
variable {V : Type _} [AddCommGroup V] [Module F V]

/-- Exercise 1.4 (Axler): If a ∈ F, v ∈ V, and a • v = 0, then a = 0 or v = 0. -/
theorem axler_exercise_1_4 (a : F) (v : V) : a • v = (0 : V) → a = (0 : F) ∨ v = (0 : V) := by sorry
