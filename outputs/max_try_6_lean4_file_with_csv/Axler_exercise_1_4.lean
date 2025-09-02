import Mathlib

variable {F : Type*} [Field F]
variable {V : Type*} [AddCommGroup V] [Module F V]

/-- Exercise 1.4 (Axler): If a ∈ 𝔽, v ∈ V, and a • v = 0, then a = 0 or v = 0. -/
theorem Axler_exercise_1_4 (a : F) (v : V) (h : a • v = 0) : a = 0 ∨ v = 0 := by sorry
