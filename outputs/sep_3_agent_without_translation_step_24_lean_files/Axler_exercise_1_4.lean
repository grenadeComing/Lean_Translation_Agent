import Mathlib

/-!
Exercise 1.4 (Axler): If a ∈ F, v ∈ V, and a • v = 0, then a = 0 or v = 0.
We state this for a field F and a module V over F.
-/

theorem Axler_exercise_1_4 {F : Type*} [Field F] {V : Type*} [AddCommGroup V] [Module F V]
  (a : F) (v : V) (h : a • v = 0) : a = 0 ∨ v = 0 := by sorry
