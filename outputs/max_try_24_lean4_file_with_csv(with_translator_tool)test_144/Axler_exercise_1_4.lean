import Mathlib

/-- Exercise: Let F be a field and V a vector space over F. For a ∈ F and v ∈ V, if a • v = 0, then a = 0 or v = 0. -/
theorem axler_exercise_1_4 {F : Type*} [Field F] {V : Type*} [AddCommMonoid V] [Module F V]
  (a : F) (v : V) (h : a • v = 0) : a = 0 ∨ v = 0 := by sorry